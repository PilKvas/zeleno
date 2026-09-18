# Implementation Plan: Заметки для растений в саду

**Feature**: `003-garden-plant-notes`  
**Date**: 2026-09-11  
**Spec**: [spec.md](spec.md)

## Контекст

У растения в «Моём саду» нет места для записей пользователя («пересадил 3 мая», «желтеют нижние листья»). Бэк уже отдаёт полный CRUD заметок, в приложении их нет. Нужно: на экране растения сада — переход к списку заметок; в списке — добавление, редактирование, удаление.

Решения:
- **Объём**: список + создать + редактировать + удалить.
- **Вход**: плитка «Заметки ›» на экране растения (только в режиме сада, `plantId != null`).
- **Форма**: отдельный экран (как `AddGardenPlantScreen`), один экран на создание и редактирование.

## API (снято с `http://213.171.4.22:8001/api/openapi.json`)

| метод | путь | тело / ответ |
|---|---|---|
| GET | `/api/garden/plants/{plant_id}/notes` | `List<PlantNoteDetailSchema>`, отсортировано по `updated_at` |
| POST | `…/notes` | `{title: 1..128, content: 1..512}` → 201 `PlantNoteDetailSchema` |
| GET | `…/notes/{note_id}` | `PlantNoteDetailSchema` (в v1 не нужен — заметка есть в списке) |
| PATCH | `…/notes/{note_id}` | `{title?, content?}` → 200 |
| DELETE | `…/notes/{note_id}` | 200 `MessageSchema` |

`PlantNoteDetailSchema`: `id, plant_id, title, content, created_at, updated_at` (date-time). Ошибки: 401/404/422 — уже маппятся через `mapErrorToMessage` ([error_mapper.dart](lib/core/helper/error_mapper.dart)).

## Что переиспользуем

- Кубит списка с CRUD и перезагрузкой — [plant_rooms_cubit.dart](lib/features/plant_rooms/presentation/cubit/plant_rooms_cubit.dart).
- Экран-форма с валидацией в кубите, нижней кнопкой и `BlocListener` на успех → `maybePop(true)` — [add_garden_plant_screen.dart](lib/features/garden_plants/presentation/screens/add/add_garden_plant_screen.dart), [add_garden_plant_cubit.dart](lib/features/garden_plants/presentation/screens/add/cubit/add_garden_plant_cubit.dart).
- Подтверждение удаления через `AlertDialog` — [plant_room_form_bottom_sheet.dart](lib/features/plant_rooms/presentation/widgets/plant_room_form_bottom_sheet.dart) `_confirmDeleteRoom`.
- Body-DTO freezed + `.toJson()` в репозитории — [create_garden_plant_body.dart](lib/features/garden_plants/data/dto/create_garden_plant_body.dart), [garden_plants_repository.dart](lib/features/garden_plants/data/repository/garden_plants_repository.dart).
- Стиль карточек на экране растения — [garden_plant_care_card_widget.dart](lib/features/garden_plants/presentation/screens/detail/widgets/garden_plant_care_card_widget.dart) (фон `background`, рамка `secondaryText@0.12`, радиус 12).
- `ZTextField` (`maxLines`), `ZButton.gradient1/secondary`, `ZLoading`, `DateFormat.yMMMd(locale)` (уже в detail-экране).
- Возврат результата и перезагрузка родителя: `context.router.push<bool>(...)` → `reloadAfterEdit()` — `_openEditScreen` в [garden_plant_detail_screen.dart](lib/features/garden_plants/presentation/screens/detail/garden_plant_detail_screen.dart).

## Реализация

### 1. Новая фича `lib/features/garden_plant_notes/`

Отдельный модуль (заметки — под-агрегат растения со своими эндпоинтами; `garden_plants` не раздуваем — так же разделены rooms/plants).

```
domain/
  models/plant_note_model.dart          freezed+json: id, plantId, title, content, createdAt, updatedAt (DateTime)
  entities/create_plant_note_params.dart  plantId, title, content
  entities/update_plant_note_params.dart  plantId, noteId, title, content
  repository/i_plant_notes_repository.dart
      getNotes({plantId}) / createNote({params}) / updateNote({params}) / deleteNote({plantId, noteId})
data/
  dto/create_plant_note_body.dart       freezed: title, content
  dto/update_plant_note_body.dart       freezed: title, content
  service/plant_notes_service.dart      retrofit: 4 метода, @Body Map<String,dynamic>
  repository/plant_notes_repository.dart  trim() полей, .toJson() тел
presentation/
  screens/list/garden_plant_notes_screen.dart      @RoutePage, AutoRouteWrapper → BlocProvider(GardenPlantNotesCubit)
  screens/list/cubit/garden_plant_notes_cubit.dart + garden_plant_notes_state.dart (part, freezed)
  screens/list/widgets/plant_note_card_widget.dart
  screens/edit/garden_plant_note_edit_screen.dart  @RoutePage, AutoRouteWrapper → BlocProvider(GardenPlantNoteEditCubit)
  screens/edit/cubit/garden_plant_note_edit_cubit.dart + _state.dart
```
Все `export.dart` — через `make exports` (генерируются, руками не писать).

### 2. Кубиты

**`GardenPlantNotesCubit(plantNotesRepository, plantId)`** — state: `status`, `notes`, `error`. Методы: `loadNotes()`. Удаление/создание живут в edit-кубите; список просто перезагружается по результату `push<bool>`. Порядок — серверный (по `updated_at`); если на интеграции окажется asc — отсортировать desc в репозитории.

**`GardenPlantNoteEditCubit(plantNotesRepository, plantId, note?)`** — state: `status`, `title`, `content`, `validationError` (`emptyTitle / titleTooLong / emptyContent / contentTooLong`), `error`, `wasSaved`, `wasDeleted`, `isDeleting`. Методы: `updateTitle`, `updateContent`, `submit()` (trim, лимиты 128/512, create или update по `note == null`), `delete()`. Guard от повторного сабмита при `status.isLoading`, `isClosed`-проверки после await — как в `AddGardenPlantCubit`.

### 3. Экраны

**Список** (`GardenPlantNotesScreen(plantId)`): AppBar с `chevron_left`, заголовок `largeTitle` «Заметки», `ListView.separated` из `PlantNoteCardWidget` (title `headline300`, content 2 строки `body` + `ellipsis`, дата `caption` через `DateFormat.yMMMd`), тап → `push<bool>(GardenPlantNoteEditRoute(plantId, note))` → при `true` `loadNotes()`. Внизу закреплённая `ZButton.gradient1` «Добавить заметку» → тот же push без `note`. Состояния: loading (`ZLoading` 72), failure с `retry`, пустой список — текст + та же кнопка. `RefreshIndicator` на pull-to-refresh.

**Форма** (`GardenPlantNoteEditScreen(plantId, note?)`): headline «Новая заметка» / «Редактировать заметку», `ZTextField` заголовка (`maxLength` 128) и `ZTextField` текста (`maxLines: 8`, `keyboardType: multiline`, счётчик `n/512`), текст валидации/ошибки под полями цветом `error`, снизу `ZButton.gradient1` «Сохранить» (при загрузке — `ZLoading` 46). В режиме редактирования ниже — `ZButton.secondary` «Удалить заметку» с `AlertDialog`-подтверждением. `BlocListener`: `wasSaved || wasDeleted` → `context.router.maybePop(true)`.

### 4. Экран растения — плитка

[garden_plant_detail_screen.dart](lib/features/garden_plants/presentation/screens/detail/garden_plant_detail_screen.dart): после `_CareCardsRow` при `!isSpeciesMode` — новый `GardenPlantNotesTileWidget` (`detail/widgets/`): иконка `Icons.sticky_note_2_outlined` в кружке, текст «Заметки», `chevron_right`; стиль как `GardenPlantCareCardWidget`, на всю ширину. `onTap → context.router.push(GardenPlantNotesRoute(plantId: plant.id))`.

### 5. Навигация, DI, l10n

- [router.dart](lib/features/navigation/router.dart): в `GardenStackRoute.children` добавить `GardenPlantNotesRoute.page`, `GardenPlantNoteEditRoute.page` (детальный экран сада открывается только из garden-стека и из пуша — тоже garden-стек).
- [di.dart](lib/app/di/di.dart): `PlantNotesService(dio)` → `IPlantNotesRepository` (`PlantNotesRepository`). Кубиты не синглтоны — создаются во `wrappedRoute`.
- `lib/l10n/app_ru.arb` + `intl_en.arb`: `gardenPlantNotesTitle`, `gardenPlantNotesEmpty`, `gardenPlantNotesLoadError`, `gardenPlantNotesAdd`, `gardenPlantNoteNewTitle`, `gardenPlantNoteEditTitle`, `gardenPlantNoteTitleHint`, `gardenPlantNoteContentHint`, `gardenPlantNoteTitleRequired`, `gardenPlantNoteTitleTooLong`, `gardenPlantNoteContentRequired`, `gardenPlantNoteContentTooLong`, `gardenPlantNoteSave`, `gardenPlantNoteDelete`, `gardenPlantNoteDeleteTitle`, `gardenPlantNoteDeleteMessage`, `gardenPlantNoteDeleteCancel`, `gardenPlantNoteDeleteConfirm`.

### 6. Тесты (`test/features/garden_plant_notes/`)

- `domain/models/plant_note_model_test.dart` — `fromJson` snake_case, `DateTime` парсится.
- `data/repository/plant_notes_repository_test.dart` — тела запросов уходят как `{'title','content'}` с trim; `deleteNote` пробрасывает `plantId/noteId`.
- `presentation/screens/list/cubit/garden_plant_notes_cubit_test.dart` — loading→success, loading→failure.
- `presentation/screens/edit/cubit/garden_plant_note_edit_cubit_test.dart` — 4 ветки валидации, create → `wasSaved`, update → `wasSaved`, delete → `wasDeleted`, ошибка репозитория → `failure` + `error`, повторный submit во время loading игнорируется.

## Порядок шагов

0. (по конституции) `specs/003-garden-plant-notes/spec.md` через `/speckit-specify` — короткий, API уже известен; этот файл → `plan.md`; обновить блок Active Feature в `CLAUDE.md`.
1. domain + data + DI, `make exports`, `build_runner`.
2. Роуты + плитка на экране растения.
3. Экран списка + кубит.
4. Экран формы + кубит (создание/редактирование/удаление).
5. l10n, тесты, `dart format .` → `flutter analyze` → `flutter test`.

## Верификация

- `dart run build_runner build --delete-conflicting-outputs`, `flutter analyze` — 0 issues, `flutter test` — все новые тесты зелёные.
- На устройстве/симуляторе против dev-бэка: сад → растение → плитка «Заметки» → пустой список → «Добавить» → валидация пустых полей и лимитов → сохранить → заметка в списке с датой → тап → изменить → сохранить → изменения видны → удалить с подтверждением → список пуст. Pull-to-refresh работает. Выключить сеть → понятная ошибка и `retry`.
- Проверить порядок списка от сервера (новые сверху).
