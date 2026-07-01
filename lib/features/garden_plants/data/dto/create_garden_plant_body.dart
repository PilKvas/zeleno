import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_garden_plant_body.freezed.dart';
part 'create_garden_plant_body.g.dart';

/// Тело запроса `POST /api/garden/plants`.
@freezed
class CreateGardenPlantBody with _$CreateGardenPlantBody {
  const factory CreateGardenPlantBody({
    @JsonKey(name: 'species_id') required int speciesId,
    @JsonKey(name: 'custom_name') required String customName,
    @JsonKey(name: 'room_id') required int? roomId,
  }) = _CreateGardenPlantBody;

  factory CreateGardenPlantBody.fromJson(Map<String, dynamic> json) =>
      _$CreateGardenPlantBodyFromJson(json);
}
