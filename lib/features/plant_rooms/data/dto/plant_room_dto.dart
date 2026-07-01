import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/models/plant_room_model.dart';

part 'plant_room_dto.freezed.dart';
part 'plant_room_dto.g.dart';

/// Ответ `GET /api/garden/rooms[/{id}]`. Маппится в [PlantRoomModel].
@freezed
class PlantRoomDto with _$PlantRoomDto {
  const PlantRoomDto._();

  const factory PlantRoomDto({
    required int id,
    required String name,
    @JsonKey(name: 'humidity_percent') int? humidityPercent,
    @JsonKey(name: 'illuminance_lux') int? illuminanceLux,
    @JsonKey(name: 'temperature_celsius') double? temperatureCelsius,
    @JsonKey(name: 'window_direction') String? windowDirection,
  }) = _PlantRoomDto;

  factory PlantRoomDto.fromJson(Map<String, dynamic> json) =>
      _$PlantRoomDtoFromJson(json);

  PlantRoomModel toModel() => PlantRoomModel(
        id: id,
        name: name,
        humidityPercent: humidityPercent,
        illuminanceLux: illuminanceLux,
        temperatureCelsius: temperatureCelsius,
        windowDirection: windowDirection,
      );
}
