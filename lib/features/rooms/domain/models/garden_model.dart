import 'package:freezed_annotation/freezed_annotation.dart';

part 'garden_model.freezed.dart';
part 'garden_model.g.dart';

@freezed
class GardenModel with _$GardenModel {
  const factory GardenModel({
    @JsonKey(name: "room_id") required int roomId,
    @JsonKey(name: "specie_id") required int specieId,
    @JsonKey(name: "parameters") Parameters? parameters,
    @JsonKey(name: "custom_name") String? customName,
    @JsonKey(name: "description") String? description,
  }) = _GardenModel;

  factory GardenModel.fromJson(Map<String, dynamic> json) =>
      _$GardenModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}

@freezed
class Parameters with _$Parameters {
  const factory Parameters({
    @JsonKey(name: "last_water") required DateTime lastWater,
    @JsonKey(name: "last_fertilizer") required DateTime lastFertilizer,
    @JsonKey(name: "last_repot") required DateTime lastRepot,
    @JsonKey(name: "last_prun") required DateTime lastPrun,
    @JsonKey(name: "height") required int height,
    @JsonKey(name: "pot_diameter") required int potDiameter,
    @JsonKey(name: "pot_height") required int potHeight,
    @JsonKey(name: "current_state") required String currentState,
    @JsonKey(name: "exposure") required String exposure,
  }) = _Parameters;

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
