import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_garden_room_body.freezed.dart';
part 'update_garden_room_body.g.dart';

/// Тело запроса `PATCH /api/garden/rooms/{room_id}`.
@freezed
class UpdateGardenRoomBody with _$UpdateGardenRoomBody {
  const factory UpdateGardenRoomBody({
    required String name,
    @JsonKey(name: 'temperature_celsius') double? temperatureCelsius,
    @JsonKey(name: 'humidity_percent') int? humidityPercent,
    @JsonKey(name: 'illuminance_lux') int? illuminanceLux,
    @JsonKey(name: 'window_direction') String? windowDirection,
  }) = _UpdateGardenRoomBody;

  factory UpdateGardenRoomBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateGardenRoomBodyFromJson(json);
}
