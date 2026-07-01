---
description: "Task list for feature 001-add-plant-to-room"
---

# Tasks: Добавление растения в комнату

**Input**: Design documents from `/specs/001-add-plant-to-room/`  
**Prerequisites**: plan.md, spec.md, research.md, data-model.md, contracts/garden-plants-api.md

**Tests**: Включены согласно constitution (Cubits + use cases). Отдельный TDD-цикл не требуется.

**Organization**: Задачи сгруппированы по user story для независимой реализации и проверки.

## Format: `[ID] [P?] [Story] Description`

- **[P]**: Можно выполнять параллельно (разные файлы, нет зависимостей от незавершённых задач)
- **[Story]**: Привязка к user story (US1, US2, US3)

## Path Conventions

- Feature code: `lib/features/garden_plants/`
- Tests: `test/features/garden_plants/`
- Shared changes: `lib/features/plant_rooms/`, `lib/features/navigation/`, `lib/app/di/di.dart`, `lib/l10n/`

---

## Phase 1: Setup (Shared Infrastructure)

**Purpose**: Зависимости и структура модуля

- [x] T001 Add `image_picker` dependency in `pubspec.yaml` and run `flutter pub get`
- [x] T002 Create `garden_plants` feature folder structure per `specs/001-add-plant-to-room/plan.md` under `lib/features/garden_plants/`

---

## Phase 2: Foundational (Blocking Prerequisites)

**Purpose**: Data/domain слой и маршруты — блокируют все user stories

**⚠️ CRITICAL**: User story work не начинается до завершения этой фазы

- [x] T003 [P] Create `GardenPlantModel` (freezed + json_serializable) in `lib/features/garden_plants/domain/models/garden_plant_model.dart`
- [x] T004 [P] Create `CreateGardenPlantParams` entity in `lib/features/garden_plants/domain/entities/create_garden_plant_params.dart`
- [x] T005 Create `IGardenPlantsRepository` in `lib/features/garden_plants/domain/repository/i_garden_plants_repository.dart`
- [x] T006 Implement `GardenPlantsService` (POST/GET plants, POST image) in `lib/features/garden_plants/data/service/garden_plants_service.dart` per `specs/001-add-plant-to-room/contracts/garden-plants-api.md`
- [x] T007 Implement `GardenPlantsRepository` in `lib/features/garden_plants/data/repository/garden_plants_repository.dart` with DTO mapping and error normalization
- [x] T008 Implement `CreateGardenPlantUseCase` (create + optional image upload orchestration) in `lib/features/garden_plants/domain/use_cases/create_garden_plant_use_case.dart`
- [x] T009 [P] Implement `GetGardenPlantsUseCase` in `lib/features/garden_plants/domain/use_cases/get_garden_plants_use_case.dart`
- [x] T010 Register `GardenPlantsService`, repository, and use cases in `lib/app/di/di.dart`
- [ ] T011 Run `dart run build_runner build --delete-conflicting-outputs` for freezed/retrofit/auto_route codegen
- [x] T012 [P] Add l10n keys for add-plant flow, success screen, garden list, and validation errors in `lib/l10n/app_ru.arb` and `lib/l10n/app_en.arb`, then regenerate `lib/l10n/gen/`
- [x] T013 Register `GardenStackRoute`, `GardenPlantsListRoute`, `AddGardenPlantRoute`, `AddGardenPlantSuccessRoute` with typed args in `lib/features/navigation/router.dart` and update `PlantRoomsSelectionRoute` args (`speciesId`, `speciesSlug`)

**Checkpoint**: Foundation ready — можно начинать user stories

---

## Phase 3: User Story 1 — Добавить растение в существующую комнату (Priority: P1) 🎯 MVP

**Goal**: Полный поток: карточка → выбор комнаты → форма (имя + фото) → экран успеха → «В мой сад» / «Закрыть»

**Independent Test**: Авторизованный пользователь с ≥1 комнатой добавляет растение с именем, видит экран успеха, переходит в таб сада или обратно на карточку вида (см. `specs/001-add-plant-to-room/quickstart.md` Scenario 1)

### Implementation for User Story 1

- [x] T014 [P] [US1] Create `AddGardenPlantCubit` with freezed state in `lib/features/garden_plants/presentation/cubit/add_garden_plant_cubit.dart`
- [x] T015 [P] [US1] Create `PlantPhotoPickerWidget` in `lib/features/garden_plants/presentation/widgets/plant_photo_picker_widget.dart` using `image_picker`
- [x] T016 [US1] Implement `AddGardenPlantScreen` (name field, photo picker, submit, loading) in `lib/features/garden_plants/presentation/screens/add_garden_plant_screen.dart`
- [x] T017 [US1] Implement `AddGardenPlantSuccessScreen` with room/plant context and «В мой сад» / «Закрыть» actions in `lib/features/garden_plants/presentation/screens/add_garden_plant_success_screen.dart`
- [x] T018 [P] [US1] Create `GardenPlantsListCubit` with freezed state in `lib/features/garden_plants/presentation/cubit/garden_plants_list_cubit.dart`
- [x] T019 [US1] Implement `GardenPlantsListScreen` in `lib/features/garden_plants/presentation/screens/garden_plants_list_screen.dart`
- [x] T020 [US1] Wire room button `onPressed` to `AddGardenPlantRoute` in `lib/features/plant_rooms/presentation/screens/plant_rooms_selection_screen.dart`
- [x] T021 [US1] Pass `speciesId` and `speciesSlug` from `PlantDetailsScreen` to `PlantRoomsSelectionRoute` in `lib/features/plant_details/presentation/screens/plant_details_screen.dart`; disable «В сад» until `PlantDetailsModel.id` is available
- [x] T022 [US1] Enable garden tab (`GardenStackRoute` index 0) in `lib/features/navigation/bottom_navigation.dart` and add `GardenPlantsListRoute` as initial child in `lib/features/navigation/router.dart`
- [x] T023 [US1] Implement «В мой сад» navigation (switch to garden tab index 0, pop to garden list root) in `lib/features/garden_plants/presentation/screens/add_garden_plant_success_screen.dart`
- [x] T024 [US1] Implement «Закрыть» navigation (return to `PlantDetailsRoute` by `speciesSlug`) in `lib/features/garden_plants/presentation/screens/add_garden_plant_success_screen.dart`

**Checkpoint**: User Story 1 полностью функционален и тестируем независимо

---

## Phase 4: User Story 2 — Создать комнату и добавить растение (Priority: P2)

**Goal**: Пользователь без комнат создаёт комнату и продолжает поток добавления без потери контекста вида

**Independent Test**: Аккаунт без комнат → создать комнату с экрана выбора → выбрать её → экран добавления с теми же полями (quickstart Scenario 1 variant)

### Implementation for User Story 2

- [x] T025 [US2] Ensure `speciesId`/`speciesSlug` route args survive room creation flow in `lib/features/plant_rooms/presentation/screens/plant_rooms_selection_screen.dart`
- [x] T026 [US2] After `createRoom` in `PlantRoomsCubit`, verify new room appears in list and navigates to `AddGardenPlantRoute` same as existing rooms in `lib/features/plant_rooms/presentation/screens/plant_rooms_selection_screen.dart`

**Checkpoint**: User Stories 1 и 2 работают независимо

---

## Phase 5: User Story 3 — Обработка ошибок при добавлении (Priority: P3)

**Goal**: Валидация, retry, защита от двойного submit, понятные ошибки сети/API

**Independent Test**: Пустое имя блокирует submit; сбой сети при сохранении — сообщение и retry без потери формы (quickstart Scenarios 2–4)

### Implementation for User Story 3

- [x] T027 [US3] Add empty-name validation and `validationError` state in `lib/features/garden_plants/presentation/cubit/add_garden_plant_cubit.dart`
- [x] T028 [US3] Add double-submit guard (ignore while `Status.loading`) in `lib/features/garden_plants/presentation/cubit/add_garden_plant_cubit.dart`
- [x] T029 [US3] Display error message and preserve form data on failure in `lib/features/garden_plants/presentation/screens/add_garden_plant_screen.dart`
- [x] T030 [US3] Map room-not-found (404) and network errors to user messages in `lib/features/garden_plants/data/repository/garden_plants_repository.dart`
- [x] T031 [US3] Handle image upload failure after successful create (show non-blocking warning on success screen) in `lib/features/garden_plants/domain/use_cases/create_garden_plant_use_case.dart` and `lib/features/garden_plants/presentation/screens/add_garden_plant_success_screen.dart`
- [x] T032 [US3] Add retry action for failed room list load in `lib/features/plant_rooms/presentation/screens/plant_rooms_selection_screen.dart`
- [x] T033 [US3] Add error state and retry for garden plants list in `lib/features/garden_plants/presentation/screens/garden_plants_list_screen.dart`

**Checkpoint**: Все user stories реализованы с обработкой ошибок

---

## Phase 6: Polish & Cross-Cutting Concerns

**Purpose**: Тесты, l10n cleanup, quality gate

- [x] T034 [P] Unit test `CreateGardenPlantUseCase` in `test/features/garden_plants/domain/use_cases/create_garden_plant_use_case_test.dart`
- [x] T035 [P] Unit test `AddGardenPlantCubit` in `test/features/garden_plants/presentation/cubit/add_garden_plant_cubit_test.dart`
- [x] T036 [P] Unit test `GardenPlantsListCubit` in `test/features/garden_plants/presentation/cubit/garden_plants_list_cubit_test.dart`
- [x] T037 Replace remaining hardcoded strings in `lib/features/plant_rooms/presentation/screens/plant_rooms_selection_screen.dart` with l10n keys
- [ ] T038 Run `dart format .`, `flutter analyze`, and `flutter test` — zero issues
- [ ] T039 Execute manual validation per `specs/001-add-plant-to-room/quickstart.md`

---

## Dependencies & Execution Order

### Phase Dependencies

- **Phase 1 (Setup)**: Старт сразу
- **Phase 2 (Foundational)**: Зависит от Phase 1 — **блокирует** все user stories
- **Phase 3 (US1)**: Зависит от Phase 2 — **MVP**
- **Phase 4 (US2)**: Зависит от Phase 3 (навигация и add flow)
- **Phase 5 (US3)**: Зависит от Phase 3 (cubit и экраны)
- **Phase 6 (Polish)**: Зависит от Phases 3–5

### User Story Dependencies

- **US1 (P1)**: После Foundational — без зависимостей от других stories
- **US2 (P2)**: После US1 — тонкая интеграция с `plant_rooms`
- **US3 (P3)**: После US1 — усиление error handling существующих экранов

### Parallel Opportunities

- **Phase 2**: T003, T004, T009, T012 — параллельно
- **Phase 3**: T014+T015 параллельно; T018 параллельно с T016–T017 после cubit готов
- **Phase 6**: T034, T035, T036 — параллельно

### Parallel Example: User Story 1

```bash
# После Phase 2 — параллельно:
T014: lib/features/garden_plants/presentation/cubit/add_garden_plant_cubit.dart
T015: lib/features/garden_plants/presentation/widgets/plant_photo_picker_widget.dart
T018: lib/features/garden_plants/presentation/cubit/garden_plants_list_cubit.dart

# Затем последовательно:
T016 → T017 → T020 → T021 → T022 → T023 → T024
```

---

## Implementation Strategy

### MVP First (User Story 1 Only)

1. Phase 1: Setup  
2. Phase 2: Foundational  
3. Phase 3: User Story 1  
4. **STOP and VALIDATE** — quickstart Scenario 1  
5. Demo / merge MVP

### Incremental Delivery

1. Setup + Foundational → foundation ready  
2. US1 → MVP (добавление растения end-to-end)  
3. US2 → onboarding без комнат  
4. US3 → production-ready error handling  
5. Polish → tests + quality gate

---

## Notes

- `PlantRoomsState` остаётся без freezed (legacy); новые cubit'ы — только freezed
- Multipart upload: `@Part` / `@PartFile` в retrofit; тестировать на устройстве
- Commit после каждой фазы или логической группы задач
