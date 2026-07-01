import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_room_model.freezed.dart';

/// UI-модель комнаты сада. Сериализация живёт в `PlantRoomDto` (data-слой).
@freezed
class PlantRoomModel with _$PlantRoomModel {
  const factory PlantRoomModel({
    required int id,
    required String name,
    int? humidityPercent,
    int? illuminanceLux,
    double? temperatureCelsius,
    String? windowDirection,
  }) = _PlantRoomModel;
}
