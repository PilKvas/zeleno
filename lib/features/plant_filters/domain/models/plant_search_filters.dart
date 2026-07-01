import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_search_filters.freezed.dart';

@freezed
class PlantSearchFilters with _$PlantSearchFilters {
  const factory PlantSearchFilters({
    String? searchQuery,
    double? heightFrom,
    double? heightTo,
    String? soilPh,
    String? soilMoisture,
  }) = _PlantSearchFilters;

  const PlantSearchFilters._();

  bool get hasActiveFilters {
    final bool hasSearchQuery = searchQuery != null && searchQuery!.isNotEmpty;
    final bool hasHeight = heightFrom != null || heightTo != null;
    final bool hasSoil = soilPh != null || soilMoisture != null;
    return hasSearchQuery || hasHeight || hasSoil;
  }
}
