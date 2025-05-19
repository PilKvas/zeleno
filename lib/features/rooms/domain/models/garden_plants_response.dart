import 'package:freezed_annotation/freezed_annotation.dart';

part 'garden_plants_response.freezed.dart';
part 'garden_plants_response.g.dart';

@freezed
class GardenPlantsResponse with _$GardenPlantsResponse {
  const factory GardenPlantsResponse({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "latin_name") required String latinName,
    @JsonKey(name: "custom_name") String? customName,
  }) = _GardenPlantsResponse;

  factory GardenPlantsResponse.fromJson(Map<String, dynamic> json) =>
      _$GardenPlantsResponseFromJson(json);
}
