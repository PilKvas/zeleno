# API Contract: Garden Plants

**Base URL**: `Url.dev` (`lib/core/config/url.dart`)  
**Auth**: Bearer token via `MiddlewareInterceptor`  
**OpenAPI**: http://213.171.4.22:8001/api/docs

## POST /api/garden/plants

**Summary**: Добавить растение в сад  
**Operation ID**: `qt_garden_api_plants_create_plant`

### Request

`Content-Type: application/json`

```json
{
  "species_id": 42,
  "custom_name": "Мой фикус",
  "room_id": 3
}
```

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `species_id` | integer | yes | Encyclopedia species id |
| `custom_name` | string | yes | minLength: 1, maxLength: 255 |
| `room_id` | integer \| null | yes* | *Required for our flow |

Optional fields (not sent in v1): `sunlight_exposure`, `plant_size`, `pot_size_mm`, `last_watering`, `last_watering_exact_date`, `last_repotting`, `last_repotting_exact_date`.

### Response `201 Created`

`PlantDetailSchema`:

```json
{
  "id": 101,
  "custom_name": "Мой фикус",
  "species_id": 42,
  "species_slug": "ficus-elastica",
  "species_latin_name": "Ficus elastica",
  "room_id": 3,
  "image_url": null,
  "created_at": "2026-06-22T12:00:00Z",
  "updated_at": "2026-06-22T12:00:00Z"
}
```

### Error cases (client handling)

| Status | Scenario | UX |
|--------|----------|-----|
| 400 | Validation error | Show mapped message on form |
| 401 | Unauthorized | Redirect to profile/login |
| 404 | Room not found | Message + navigate back to room selection |
| 5xx | Server error | Retry on form |

---

## POST /api/garden/plants/{plant_id}/image

**Summary**: Загрузить изображение растения

### Request

`Content-Type: multipart/form-data`

| Part | Type | Required |
|------|------|----------|
| `image` | file (binary) | yes |

### Response `200 OK`

`PlantImageResponseSchema` (contains updated `image_url`).

### Client flow

1. Call only if user selected a photo on the add-plant screen.
2. Use `plant_id` from create response.
3. On failure after successful create: show success screen with non-blocking warning; plant exists without photo.

---

## GET /api/garden/plants

**Summary**: Список растений пользователя

### Response `200 OK`

Array of `PlantListItemSchema`:

```json
[
  {
    "id": 101,
    "custom_name": "Мой фикус",
    "image_url": "https://..."
  }
]
```

Used by tab «Мой сад» (`GardenPlantsListScreen`).

---

## Sequence: Full Add Flow

```text
Client                          API
  |                               |
  |-- POST /api/garden/plants --->|
  |<-- 201 PlantDetailSchema -----|
  |                               |
  | [if photo selected]           |
  |-- POST .../plants/{id}/image >|
  |<-- 200 image_url -------------|
  |                               |
  |--> Navigate to Success Screen |
```
