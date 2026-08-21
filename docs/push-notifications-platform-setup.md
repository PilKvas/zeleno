# Пуш-уведомления: настройка вне Dart

Что нужно в платформенных файлах и внешних консолях, чтобы FCM заработал.
Dart-код (`lib/features/push_notifications/`) здесь не рассматривается.

Firebase-проект: `plants-be299`. Идентификатор приложения на обеих
платформах — `app.zeleno`.

---

## Android — настроено

### 1. Конфиг Firebase

`android/app/google-services.json` — выгружается из Firebase Console.
Внутри лежит `"package_name": "app.zeleno"`, и он **обязан совпадать** с
`applicationId`. При расхождении плагин `google-services` падает на сборке.

### 2. Плагин google-services

`android/settings.gradle`:

```groovy
id "com.google.gms.google-services" version "4.3.15" apply false
```

`android/app/build.gradle` — применение в блоке `plugins`:

```groovy
id 'com.google.gms.google-services'
```

Плагин читает `google-services.json` и генерирует ресурсы со
строками проекта. Без него `Firebase.initializeApp()` не найдёт конфигурацию.

### 3. Идентификатор приложения

`android/app/build.gradle`:

```groovy
namespace = "app.zeleno"
applicationId = "app.zeleno"
```

Исходный `com.example.zeleno_v2` пришлось сменить: конфиги Firebase выпущены
под `app.zeleno`. Обратный переход потребует перевыпуска
`google-services.json` и `GoogleService-Info.plist`.

Соответственно переехал и `MainActivity.kt`:
`kotlin/com/example/zeleno_v2/` → `kotlin/app/zeleno/`.

### 4. Версии тулчейна

Плагин `google-services` 4.3.15 и `firebase_messaging` 15.x не работают на
старом AGP. Подняты:

| Что | Было | Стало |
|---|---|---|
| Gradle (`gradle-wrapper.properties`) | 7.6.3 | 8.13 |
| Android Gradle Plugin (`settings.gradle`) | 7.3.0 | 8.9.1 |
| Kotlin (`settings.gradle`) | 1.7.10 | 2.1.20 |
| Java source/target (`app/build.gradle`) | 1.8 | 11 |

Вместе с Java 11 добавлен блок:

```groovy
kotlinOptions {
    jvmTarget = "11"
}
```

### 5. Разрешение в манифесте

`android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
```

Нужно с Android 13 (API 33). До 13 разрешение выдаётся автоматически при
установке — отсюда разное поведение платформ: на Android токен приходит даже
без разрешения, оно влияет только на показ уведомления.

### 6. minSdk

Отдельной правки не потребовалось: `minSdk = flutter.minSdkVersion`, а
дефолт Flutter уже выше требуемого FCM API 21.

---

## iOS — настроено в репозитории, ждёт аккаунта Apple

### Что уже сделано

**`ios/Runner/GoogleService-Info.plist`** — выгружен из консоли, `BUNDLE_ID`
внутри равен `app.zeleno`.

**Регистрация конфига в Xcode-проекте.** Мало положить файл в папку — он
должен попасть в цель сборки. В `project.pbxproj` добавлены `PBXFileReference`,
`PBXBuildFile` и запись в фазе Resources. Без этого `.plist` не окажется в
бандле, и Firebase не найдёт конфигурацию в рантайме.

**`PRODUCT_BUNDLE_IDENTIFIER = app.zeleno`** во всех конфигурациях Runner
(и `app.zeleno.RunnerTests` у тестовой цели).

**Фаза `[CP] Copy Pods Resources`** — добавлена вместе с подами Firebase.

**Поды** (`ios/Podfile.lock`): `Firebase/CoreOnly` и `Firebase/Messaging`
11.15.0, `firebase_core`, `firebase_messaging`. Ставятся через `pod install`,
`Podfile` правки не потребовал — плагины подключаются автоматически.

**`AppDelegate.swift`** — не менялся. `firebase_messaging` сам подписывается
на APNs-колбэки через `FlutterAppDelegate`, ручной код не нужен.

**`Runner.entitlements` с `aps-environment`.** Создан
`ios/Runner/Runner.entitlements` со значением `development`; для App Store и
TestFlight Xcode подставляет `production` сам при экспорте архива.
`CODE_SIGN_ENTITLEMENTS = Runner/Runner.entitlements` прописан во всех трёх
конфигурациях цели Runner (Debug / Release / Profile), файл добавлен в группу
Runner, чтобы был виден в навигаторе.

Проверить, что настройка применилась:

```bash
cd ios && xcodebuild -showBuildSettings -project Runner.xcodeproj \
  -target Runner -configuration Debug | grep CODE_SIGN_ENTITLEMENTS
```

**Background mode `remote-notification`.** В `ios/Runner/Info.plist`:

```xml
<key>UIBackgroundModes</key>
<array>
    <string>remote-notification</string>
</array>
```

Нужен, чтобы система будила приложение на пуши с `content-available`.

### Чего не хватает — это делается вне репозитория

**1. APNs Auth Key.** Без него Firebase физически не может достучаться до
устройств Apple. Нужен `.p8` из Apple Developer (Certificates, Identifiers &
Profiles → Keys, capability Apple Push Notifications service), затем:
`Firebase Console → Project Settings → Cloud Messaging → Apple app
configuration → APNs Authentication Key`. Вместе с файлом понадобятся
**Key ID** и **Team ID**.

**2. App ID с включённым Push Notifications** в Apple Developer и
provisioning-профиль, выпущенный после включения.

Оба пункта требуют платного Apple Developer Program. Пока его нет, iOS-пуши
работать не будут — код и конфигурация в репозитории для этого уже готовы,
не хватает только стороны Apple.

> **Про сборку с бесплатным аккаунтом.** Personal Team не поддерживает
> capability Push Notifications: сборка на физическое устройство упадёт с
> `Provisioning profile doesn't support the Push Notifications capability`.
> Сборка под симулятор проходит — entitlements там не проверяются, но
> APNs-токена симулятор не выдаёт, так что `getToken()` вернёт `null`.
> Если локальная iOS-сборка на устройство понадобится раньше, чем появится
> аккаунт, — временно убрать `CODE_SIGN_ENTITLEMENTS` из конфигураций.

---

## Вне репозитория

| Что | Где | Статус |
|---|---|---|
| Firebase-проект `plants-be299` | Firebase Console | есть |
| Android-приложение `app.zeleno` | Firebase Console | есть |
| iOS-приложение `app.zeleno` | Firebase Console | есть |
| APNs Auth Key (`.p8`) | Firebase Console → Cloud Messaging | **нет — нужен Apple Developer** |
| App ID с Push Notifications | Apple Developer | **нет — нужен Apple Developer** |

`firebase.json` в корне — служебный файл FlutterFire CLI, хранит соответствие
платформ и appId. Нужен, чтобы `flutterfire configure` при повторном запуске
обновлял существующие конфиги, а не заводил новые.

---

## Как перевыпустить конфиги

```bash
dart pub global activate flutterfire_cli
flutterfire configure --project=plants-be299
```

Перезапишет `google-services.json`, `GoogleService-Info.plist`,
`lib/firebase_options.dart` и `firebase.json`. Идентификаторы приложений
команда возьмёт из текущих `applicationId` / `PRODUCT_BUNDLE_IDENTIFIER`.
