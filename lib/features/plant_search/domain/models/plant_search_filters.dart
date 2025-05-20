import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_search_filters.freezed.dart';

@freezed
class PlantSearchFilters with _$PlantSearchFilters {
  const factory PlantSearchFilters({
    String? searchQuery,
    double? heightFrom,
    double? heightTo,
  }) = _PlantSearchFilters;

  const PlantSearchFilters._();

  bool get hasActiveFilters => 
    searchQuery != null && searchQuery!.isNotEmpty ||
    heightFrom != null ||
    heightTo != null;
} 