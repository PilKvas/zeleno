import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';

part 'plant_filter_item_dto.freezed.dart';
part 'plant_filter_item_dto.g.dart';

@freezed
class PlantFilterItemDto with _$PlantFilterItemDto {
  const factory PlantFilterItemDto({
    required String label,
    required String value,
  }) = _PlantFilterItemDto;

  factory PlantFilterItemDto.fromJson(Map<String, dynamic> json) =>
      _$PlantFilterItemDtoFromJson(json);
}

extension PlantFilterItemDtoMapper on PlantFilterItemDto {
  PlantFilterItem toModel() {
    return PlantFilterItem(
      label: label,
      value: value,
    );
  }
}
