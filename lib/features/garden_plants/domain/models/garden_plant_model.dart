import 'package:freezed_annotation/freezed_annotation.dart';

part 'garden_plant_model.freezed.dart';
part 'garden_plant_model.g.dart';

@freezed
class GardenPlantModel with _$GardenPlantModel {
  const factory GardenPlantModel({
    required int id,
    @JsonKey(name: 'custom_name') required String customName,
    @JsonKey(name: 'species_id') int? speciesId,
    @JsonKey(name: 'species_slug') String? speciesSlug,
    @JsonKey(name: 'species_latin_name') String? speciesLatinName,
    @JsonKey(name: 'room_id') int? roomId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'sunlight_exposure') String? sunlightExposure,
    @JsonKey(name: 'plant_size') String? plantSize,
    @JsonKey(name: 'pot_size_mm') int? potSizeMm,
    @JsonKey(name: 'last_watering') String? lastWatering,
    @JsonKey(name: 'last_watering_exact_date') String? lastWateringExactDate,
    @JsonKey(name: 'last_repotting') String? lastRepotting,
    @JsonKey(name: 'last_repotting_exact_date') String? lastRepottingExactDate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _GardenPlantModel;

  factory GardenPlantModel.fromJson(Map<String, dynamic> json) =>
      _$GardenPlantModelFromJson(json);
}
