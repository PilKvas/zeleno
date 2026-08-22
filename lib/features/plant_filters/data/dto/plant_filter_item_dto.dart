import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';

part 'plant_filter_item_dto.freezed.dart';
part 'plant_filter_item_dto.g.dart';

@freezed
class PlantFilterItemDto with _$PlantFilterItemDto {
  const factory PlantFilterItemDto({
    required String name,
    // По схеме ChoiceItemSchema slug может быть null (например, у tags),
    // такой элемент нельзя отправить в фильтр.
    String? slug,
  }) = _PlantFilterItemDto;

  factory PlantFilterItemDto.fromJson(Map<String, dynamic> json) =>
      _$PlantFilterItemDtoFromJson(json);
}

extension PlantFilterItemDtoMapper on PlantFilterItemDto {
  PlantFilterItem? toModel() {
    final String? filterValue = slug;
    if (filterValue == null) return null;
    return PlantFilterItem(label: name, value: filterValue);
  }
}
