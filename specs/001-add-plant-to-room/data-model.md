# Data Model: Добавление растения в комнату

**Feature**: `001-add-plant-to-room`  
**Date**: 2026-06-22

## Domain Entities

### GardenPlantModel

Экземпляр растения пользователя в саду (ответ `PlantDetailSchema` / элемент `PlantListItemSchema`).

| Field | Type | Required | Notes |
|-------|------|----------|-------|
| `id` | `int` | yes | Server-assigned plant id |
| `customName` | `String` | yes | User-defined name (1–255 chars) |
| `speciesId` | `int` | yes | Encyclopedia species id |
| `speciesSlug` | `String` | yes (detail) | For navigation back to catalog card |
| `speciesLatinName` | `String?` | detail only | Display on success screen |
| `roomId` | `int?` | no | Assigned room |
| `imageUrl` | `String?` | no | CDN URL after upload |
| `createdAt` | `DateTime?` | detail only | |
| `updatedAt` | `DateTime?` | detail only | |

### CreateGardenPlantParams (domain entity)

| Field | Type | Required | Validation |
|-------|------|----------|------------|
| `speciesId` | `int` | yes | From plant details card |
| `customName` | `String` | yes | `trim()`, length 1–255 |
| `roomId` | `int` | yes | Selected room |
| `photoBytes` | `Uint8List?` | no | If user picked image |
| `photoFileName` | `String?` | no | Required when `photoBytes` set |

### PlantRoomModel (existing)

Reused from `plant_rooms` — no changes to shape.

### AddPlantFlowContext (route-level, not persisted)

Passed via navigation; not a DB entity.

| Field | Type | Source |
|-------|------|--------|
| `speciesId` | `int` | `PlantDetailsModel.id` |
| `speciesSlug` | `String` | `PlantDetailsScreen.slug` |
| `roomId` | `int` | Selected room |
| `roomName` | `String` | `PlantRoomModel.name` |

## Relationships

```text
Species (catalog) 1 ── * GardenPlantModel (user instances)
PlantRoomModel 1 ── * GardenPlantModel
```

- One garden plant belongs to exactly one room.
- Multiple garden plants of the same species allowed per room.

## State Transitions (AddGardenPlantCubit)

```text
initial
  → loading (on submit)
  → success (plant created [+ image uploaded or skipped])
  → failure (create or unrecoverable error; form data preserved)

initial
  → validationError (empty name on submit, stays on form)
```

## State Transitions (GardenPlantsListCubit)

```text
initial → loading → success (list) | failure (error + retry)
```

## API ↔ Domain Mapping

| API field (snake_case) | Domain field |
|------------------------|--------------|
| `species_id` | `speciesId` |
| `custom_name` | `customName` |
| `room_id` | `roomId` |
| `species_slug` | `speciesSlug` |
| `species_latin_name` | `speciesLatinName` |
| `image_url` | `imageUrl` |
| `created_at` | `createdAt` |
| `updated_at` | `updatedAt` |

## Out of Scope (v1)

- `sunlight_exposure`, `plant_size`, `pot_size_mm`, watering/repotting dates — API supports but UI не собирает в этом потоке.
- Plant notes CRUD.
- Edit/delete garden plant.
