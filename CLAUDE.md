<!-- SPECKIT START -->
## Active Feature Plan

**Feature**: `001-add-plant-to-room` — Добавление растения в комнату  
**Plan**: [specs/001-add-plant-to-room/plan.md](specs/001-add-plant-to-room/plan.md)  
**Spec**: [specs/001-add-plant-to-room/spec.md](specs/001-add-plant-to-room/spec.md)

### Stack

Flutter (Dart `>=3.4.4`), `flutter_bloc`, `get_it`, `auto_route`, `dio`+`retrofit`, `freezed`, `image_picker`

### Architecture

- New feature: `lib/features/garden_plants/` (data / domain / presentation)
- Extend: `plant_rooms` (room selection navigation), `navigation` (routes + garden tab)
- Flow: PlantDetails → PlantRoomsSelection → AddGardenPlant → AddGardenPlantSuccess

### API

- `POST /api/garden/plants` — create plant (`species_id`, `custom_name`, `room_id`)
- `POST /api/garden/plants/{id}/image` — optional photo upload
- `GET /api/garden/plants` — list for «Мой сад» tab

### Commands

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
```

### Artifacts

- [research.md](specs/001-add-plant-to-room/research.md)
- [data-model.md](specs/001-add-plant-to-room/data-model.md)
- [contracts/garden-plants-api.md](specs/001-add-plant-to-room/contracts/garden-plants-api.md)
- [quickstart.md](specs/001-add-plant-to-room/quickstart.md)
<!-- SPECKIT END -->
