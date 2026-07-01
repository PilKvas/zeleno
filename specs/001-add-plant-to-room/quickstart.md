# Quickstart: Добавление растения в комнату

**Feature**: `001-add-plant-to-room`  
**Prerequisites**: Flutter SDK `>=3.4.4`, авторизованный тестовый аккаунт, ≥1 комната в саде (или создать через UI).

## Setup

```bash
cd /Users/artemdarbinan/StudioProjects/zeleno
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

После реализации также потребуется:

```bash
flutter pub add image_picker
```

## Manual E2E Validation

### Scenario 1: Happy path (P1)

1. Запустить приложение: `flutter run`
2. Войти в аккаунт (таб Profile).
3. Открыть таб Search → найти растение → открыть карточку.
4. Нажать «В сад» → экран выбора комнаты.
5. Нажать на комнату → экран добавления (имя + фото).
6. Ввести имя «Тестовый фикус», опционально добавить фото.
7. Подтвердить → экран успеха с названием комнаты.
8. Нажать «В мой сад» → таб со списком; новое растение в списке.
9. Повторить поток, на экране успеха нажать «Закрыть» → возврат на карточку вида.

**Expected**: Новый экземпляр в API (`GET /api/garden/plants`), `room_id` совпадает с выбранной комнатой.

### Scenario 2: Validation (имя обязательно)

1. Дойти до экрана добавления.
2. Оставить имя пустым → нажать подтвердить.

**Expected**: Сообщение об ошибке, экран не закрывается, API не вызывается.

### Scenario 3: Unauthorized

1. Выйти из аккаунта.
2. Открыть карточку растения → «В сад».

**Expected**: Баннер авторизации (существующий на `PlantRoomsSelectionScreen`).

### Scenario 4: Duplicate species in same room

1. Добавить вид X в комнату A с именем «Горшок 1».
2. Снова добавить вид X в комнату A с именем «Горшок 2».

**Expected**: Оба экземпляра созданы (два записи в `GET /api/garden/plants`).

## Automated Tests

```bash
flutter analyze
flutter test test/features/garden_plants/
```

Минимальный набор после реализации:

- `CreateGardenPlantUseCase` — create + optional image upload orchestration
- `AddGardenPlantCubit` — validation, loading, success, failure states
- `GardenPlantsListCubit` — list load / error / retry

## API Smoke Test (curl)

```bash
# Replace TOKEN, species_id, room_id
curl -X POST "http://213.171.4.22:8001/api/garden/plants" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"species_id":42,"custom_name":"Smoke test","room_id":3}'
```

## References

- [spec.md](./spec.md) — user requirements
- [data-model.md](./data-model.md) — entities
- [contracts/garden-plants-api.md](./contracts/garden-plants-api.md) — HTTP contract
