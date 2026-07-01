import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_garden_plant_body.freezed.dart';
part 'update_garden_plant_body.g.dart';

/// Тело запроса `PATCH /api/garden/plants/{plant_id}`.
@freezed
class UpdateGardenPlantBody with _$UpdateGardenPlantBody {
  const factory UpdateGardenPlantBody({
    @JsonKey(name: 'custom_name') required String customName,
    @JsonKey(name: 'room_id') int? roomId,
    @JsonKey(name: 'sunlight_exposure') String? sunlightExposure,
    @JsonKey(name: 'plant_size') String? plantSize,
    @JsonKey(name: 'pot_size_mm') int? potSizeMm,
    @JsonKey(name: 'last_watering') String? lastWatering,
    @JsonKey(name: 'last_watering_exact_date') String? lastWateringExactDate,
    @JsonKey(name: 'last_repotting') String? lastRepotting,
    @JsonKey(name: 'last_repotting_exact_date') String? lastRepottingExactDate,
  }) = _UpdateGardenPlantBody;

  factory UpdateGardenPlantBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateGardenPlantBodyFromJson(json);
}
