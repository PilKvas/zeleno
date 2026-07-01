# Implementation Plan: Добавление растения в комнату

**Branch**: `001-add-plant-to-room` | **Date**: 2026-06-22 | **Spec**: [spec.md](./spec.md)

**Input**: Feature specification from `/specs/001-add-plant-to-room/spec.md`

## Summary

Реализовать полный поток добавления растения в комнату: карточка вида → выбор комнаты → форма (имя + опциональное фото) → экран успеха → «В мой сад» / «Закрыть». Технически — новый feature-модуль `garden_plants` (API, domain, presentation), доработка `plant_rooms` (навигация при выборе комнаты), новый таб «Мой сад» со списком растений. API: `POST /api/garden/plants` + опционально `POST /api/garden/plants/{id}/image`.

## Technical Context

**Language/Version**: Dart `>=3.4.4 <4.0.0`, Flutter  
**Primary Dependencies**: `flutter_bloc`, `get_it`, `auto_route`, `dio` + `retrofit`, `freezed`, `image_picker` (new)  
**Storage**: Remote API only; local secure storage for auth tokens (existing)  
**Testing**: `flutter_test`, `bloc_test`, `mocktail`  
**Target Platform**: iOS / Android mobile  
**Project Type**: Flutter mobile app (`zeleno_v2`)  
**Performance Goals**: Create + navigate to success < 5s (SC-002)  
**Constraints**: Clean architecture, l10n strings, uikit components, no dio in presentation  
**Scale/Scope**: 3 new screens, 1 new feature module, 2 route stacks updated, ~15–20 new source files

## Constitution Check

*GATE: Must pass before Phase 0 research. Re-check after Phase 1 design.*

| Principle | Status | Notes |
|-----------|--------|-------|
| I. Feature-First Clean Architecture | ✅ PASS | New `garden_plants` feature; `plant_rooms` only for room list navigation |
| II. Cubit + Freezed State | ✅ PASS | New cubits use freezed; legacy `PlantRoomsState` unchanged in this feature |
| III. DI via get_it | ✅ PASS | Register service/repo/use cases in `di.dart` |
| IV. Generated Code | ✅ PASS | freezed models, retrofit service, auto_route `.gr.dart` |
| V. Repository/Service Boundary | ✅ PASS | `GardenPlantsService` → `GardenPlantsRepository` → use cases |
| UI / l10n / uikit | ✅ PASS | Reuse `ZButton`, `AppTextField`, `ZColorScheme`; add arb keys |
| Quality gate | ✅ PLAN | analyze + test required before merge |

**Post-design re-check**: No violations. Complexity Tracking not required.

## Project Structure

### Documentation (this feature)

```text
specs/001-add-plant-to-room/
├── plan.md
├── research.md
├── data-model.md
├── quickstart.md
├── contracts/
│   └── garden-plants-api.md
└── tasks.md             # Phase 2 (/speckit-tasks)
```

### Source Code (target layout)

```text
lib/features/garden_plants/
├── data/
│   ├── service/garden_plants_service.dart
│   └── repository/garden_plants_repository.dart
├── domain/
│   ├── models/garden_plant_model.dart
│   ├── entities/create_garden_plant_params.dart
│   ├── repository/i_garden_plants_repository.dart
│   └── use_cases/
│       ├── create_garden_plant_use_case.dart
│       ├── upload_garden_plant_image_use_case.dart
│       └── get_garden_plants_use_case.dart
└── presentation/
    ├── cubit/
    │   ├── add_garden_plant_cubit.dart (+ .freezed.dart state)
    │   └── garden_plants_list_cubit.dart (+ .freezed.dart state)
    ├── screens/
    │   ├── add_garden_plant_screen.dart
    │   ├── add_garden_plant_success_screen.dart
    │   └── garden_plants_list_screen.dart
    └── widgets/
        └── plant_photo_picker_widget.dart

lib/features/plant_rooms/presentation/screens/
└── plant_rooms_selection_screen.dart    # wire room tap → AddGardenPlantRoute

lib/features/navigation/
├── router.dart                          # new routes + GardenStackRoute
└── bottom_navigation.dart               # enable garden tab (index 0)

lib/app/di/di.dart                       # register garden_plants deps

lib/l10n/
├── app_ru.arb                           # new strings
└── app_en.arb

test/features/garden_plants/
├── domain/use_cases/
└── presentation/cubit/
```

**Structure Decision**: Single Flutter app; новый feature `garden_plants` + точечные изменения в `plant_rooms`, `navigation`, `di`, `l10n`.

## Implementation Phases

### Phase A: Data & Domain

1. `GardenPlantModel` (freezed + json_serializable)
2. `CreateGardenPlantParams` entity
3. `GardenPlantsService` — `POST /plants`, `POST /plants/{id}/image`, `GET /plants`
4. `GardenPlantsRepository` + `IGardenPlantsRepository`
5. Use cases: `CreateGardenPlantUseCase` (orchestrates create + optional upload), `GetGardenPlantsUseCase`
6. Register in `di.dart`
7. `build_runner`

### Phase B: Presentation — Add Flow

1. `AddGardenPlantCubit` + freezed state (`name`, `photoPath`, `status`, `errorMessage`)
2. `AddGardenPlantScreen` — name field (`AppTextField`), photo picker widget, submit button
3. `AddGardenPlantSuccessScreen` — room name, plant name, buttons «В мой сад» / «Закрыть»
4. Routes: `AddGardenPlantRoute`, `AddGardenPlantSuccessRoute` with typed args
5. Update `PlantRoomsSelectionScreen`: `onPressed` → `context.router.push(AddGardenPlantRoute(...))`
6. Update `PlantDetailsScreen`: pass `speciesId` when pushing `PlantRoomsSelectionRoute`
7. l10n keys for all user-visible strings

### Phase C: Tab «Мой сад»

1. `GardenPlantsListCubit` + `GardenPlantsListScreen`
2. `GardenStackRoute` in router as child of `HomeRoute` (index 0)
3. Enable plant icon tab in `bottom_navigation.dart`
4. Success screen «В мой сад» → `tabsRouter.setActiveIndex(0)` + pop to root of garden stack

### Phase D: Navigation «Закрыть»

- `context.router.popUntilRouteWithName(PlantDetailsRoute.name)` or `pushAndPopUntil` with `speciesSlug`

### Phase E: Tests & Quality

- Unit tests for use case and cubits
- `flutter analyze` clean
- Manual validation per [quickstart.md](./quickstart.md)

## Route Arguments

| Route | Arguments |
|-------|-----------|
| `PlantRoomsSelectionRoute` | `speciesId: int`, `speciesSlug: String` |
| `AddGardenPlantRoute` | `speciesId`, `speciesSlug`, `roomId`, `roomName` |
| `AddGardenPlantSuccessRoute` | `speciesSlug`, `customName`, `roomName`, `plantId` |

## Dependencies to Add

```yaml
image_picker: ^1.1.2  # verify latest compatible on pub.dev
```

## Risks & Mitigations

| Risk | Mitigation |
|------|------------|
| `PlantDetailsModel.id` null before load | Disable «В сад» until details loaded |
| Image upload fails after create | Success screen + warning; plant saved |
| Garden tab not in nav yet | Phase C explicitly enables tab |
| Multipart with retrofit | Use `@Part` + `@PartFile` pattern; test on device |

## Complexity Tracking

> No constitution violations requiring justification.

## Generated Artifacts

| Artifact | Path |
|----------|------|
| Research | [research.md](./research.md) |
| Data model | [data-model.md](./data-model.md) |
| API contract | [contracts/garden-plants-api.md](./contracts/garden-plants-api.md) |
| Quickstart | [quickstart.md](./quickstart.md) |

## Next Step

Run `/speckit-tasks` to generate dependency-ordered `tasks.md`.
