import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/plant_search_item.dart';

part 'plant_search_item_dto.freezed.dart';
part 'plant_search_item_dto.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PlantSearchItemDto with _$PlantSearchItemDto {
  const factory PlantSearchItemDto({
    required String slug,
    String? latinName,
    String? mainCommonName,
    String? imageUrl,
  }) = _PlantSearchItemDto;

  const PlantSearchItemDto._();

  PlantSearchItem toModel({
    required PlantSearchItemDto dto,
  }) {
    return PlantSearchItem(
      mainCommonName: dto.mainCommonName,
      slug: dto.slug,
      latinName: dto.latinName,
      imageUrl: dto.imageUrl,
    );
  }

  factory PlantSearchItemDto.fromJson(Map<String, dynamic> json) =>
      _$PlantSearchItemDtoFromJson(json);
}
