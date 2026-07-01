# Research: Добавление растения в комнату

**Feature**: `001-add-plant-to-room`  
**Date**: 2026-06-22

## 1. API-контракт бэкенда

**Decision**: Использовать два последовательных вызова — создание растения, затем опциональная загрузка изображения.

**Rationale**: OpenAPI (`http://213.171.4.22:8001/api/openapi.json`) разделяет создание записи и загрузку фото. `POST /api/garden/plants` возвращает `PlantDetailSchema` с `id`; `POST /api/garden/plants/{plant_id}/image` принимает `multipart/form-data` с полем `image`.

**Alternatives considered**:
- Один запрос с фото в теле создания — не поддерживается API.
- Создание без `room_id`, привязка позже — отклонено: спецификация требует привязку к комнате в момент добавления.

**Обязательные поля создания**: `species_id`, `custom_name`, `room_id` (для нашего потока).

---

## 2. Организация feature-модуля

**Decision**: Новый модуль `lib/features/garden_plants/` для домена «растения сада»; доработка `plant_rooms` только для навигации с экрана выбора комнаты.

**Rationale**: Constitution требует feature-first clean architecture. Комнаты и растения сада — разные агрегаты с разными API-эндпоинтами. `plant_rooms` уже отвечает за CRUD комнат; добавление растения — отдельный bounded context.

**Alternatives considered**:
- Расширить только `plant_rooms` — смешивает ответственности и раздувает модуль.
- Один «garden» feature — избыточный рефакторинг существующего `plant_rooms`.

---

## 3. Передача контекста между экранами

**Decision**: `auto_route` с typed route arguments (`speciesId`, `speciesSlug`, `roomId`, `roomName`).

**Rationale**: Соответствует constitution (auto_route + extras). Явные аргументы маршрута тестируемы и не теряются при deep link в будущем.

**Alternatives considered**:
- InheritedWidget / глобальный flow-cubit — сложнее отлаживать, не соответствует текущим паттернам проекта.
- Query parameters — менее типобезопасно в auto_route.

---

## 4. Загрузка фотографии

**Decision**: Добавить зависимость `image_picker`; файл передавать в repository как `Uint8List` + имя файла; retrofit `@Part` / `@PartFile` для multipart.

**Rationale**: В проекте нет существующего image picker. `image_picker` — стандарт для Flutter, поддерживает gallery/camera.

**Alternatives considered**:
- `file_picker` — нет camera UX из коробки.
- Хранение фото только локально без upload — противоречит API и спецификации.

**Поведение при ошибке upload**: если `POST /plants` успешен, а upload фото упал — показать экран успеха с предупреждением, экземпляр уже создан (имя сохранено). Пользователь может повторить загрузку фото позже (вне scope v1 — только сообщение).

---

## 5. Таб «Мой сад»

**Decision**: Добавить `GardenStackRoute` как первый таб в `HomeScreen` (index 0); раскомментировать/добавить иконку растения в `bottom_navigation.dart`.

**Rationale**: В `bottom_navigation.dart` закомментирован `RoomRoute()` / plant icon — задел под таб сада. Спецификация требует переход «В мой сад» на список растений. `GET /api/garden/plants` возвращает список.

**Alternatives considered**:
- Навигация только внутри search stack — не соответствует UX «В мой сад» как отдельный таб.
- Placeholder-экран без API — недостаточно для приёмки FR-006a.

---

## 6. State management для новых экранов

**Decision**: Cubit + freezed state (`AddGardenPlantCubit`, `GardenPlantsListCubit`) с `Status` enum из `features/core/enums/status.dart`.

**Rationale**: Constitution II; новые cubit'ы должны следовать freezed-паттерну (в отличие от legacy `PlantRoomsState`).

**Alternatives considered**:
- Bloc с events — избыточно для формы с 2 полями.
- StatefulWidget без cubit — нарушает constitution.

---

## 7. Валидация имени

**Decision**: Клиентская валидация: непустое имя, `trim()`, max 255 символов (как `PlantCreateSchema.custom_name`).

**Rationale**: Согласовано со спецификацией (имя обязательно) и API.

**Alternatives considered**: Только серверная валидация — хуже UX.
