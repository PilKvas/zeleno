## Active Feature Plan

**Feature**: `003-garden-plant-notes` — Заметки для растений в саду  
**Plan**: [specs/003-garden-plant-notes/plan.md](specs/003-garden-plant-notes/plan.md)  
**Spec**: [specs/003-garden-plant-notes/spec.md](specs/003-garden-plant-notes/spec.md)

### Stack

Flutter (Dart `>=3.10.0`), `flutter_bloc`, `get_it`, `auto_route`, `dio`+`retrofit`, `freezed`, `intl`

### Architecture

- New feature: `lib/features/garden_plant_notes/` (data / domain / presentation)
- Extend: `garden_plants` (плитка «Заметки» на детальном экране), `navigation` (роуты в garden-стеке)
- Flow: GardenPlantDetail → GardenPlantNotes (список) → GardenPlantNoteEdit (создание / редактирование / удаление)

### API

- `GET /api/garden/plants/{plant_id}/notes` — список заметок (sorted by `updated_at`)
- `POST /api/garden/plants/{plant_id}/notes` — создать (`title` ≤128, `content` ≤512)
- `PATCH /api/garden/plants/{plant_id}/notes/{note_id}` — обновить
- `DELETE /api/garden/plants/{plant_id}/notes/{note_id}` — удалить
- OpenAPI: `http://213.171.4.22:8001/api/openapi.json`

### Commands

```bash
flutter pub get
make exports
dart run build_runner build --delete-conflicting-outputs
flutter gen-l10n
flutter analyze
flutter test
```

### Previous features

- `001-add-plant-to-room` — [plan](specs/001-add-plant-to-room/plan.md)
- `002-auth-aware-screens` — [spec](specs/002-auth-aware-screens/spec.md)
