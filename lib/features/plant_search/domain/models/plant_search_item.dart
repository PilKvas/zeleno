import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_search_item.freezed.dart';

@freezed
class PlantSearchItem with _$PlantSearchItem {
  const factory PlantSearchItem({
    required String slug,
    String? latinName,
    String? mainCommonName,
    String? imageUrl,
  }) = _PlantSearchItem;
}
