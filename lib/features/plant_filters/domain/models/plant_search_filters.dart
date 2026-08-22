import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_search_filters.freezed.dart';

@freezed
class PlantSearchFilters with _$PlantSearchFilters {
  static const double minHeight = 0;
  static const double maxHeight = 1000;

  const factory PlantSearchFilters({
    String? searchQuery,
    double? heightFrom,
    double? heightTo,
    @Default(<String>[]) List<String> soilPh,
    @Default(<String>[]) List<String> soilMoisture,
  }) = _PlantSearchFilters;

  const PlantSearchFilters._();

  /// Граница, совпадающая с краем диапазона, фильтром не считается
  /// и в запрос не уходит. API ждёт высоту в целых сантиметрах.
  int? get activeHeightFrom {
    final double? from = heightFrom;
    if (from == null || from <= minHeight) return null;
    return from.round();
  }

  int? get activeHeightTo {
    final double? to = heightTo;
    if (to == null || to >= maxHeight) return null;
    return to.round();
  }

  /// Текст поиска намеренно не учитывается: иначе иконка фильтров
  /// загорается от обычного ввода в поисковую строку.
  bool get hasActiveFilters {
    return activeHeightFrom != null ||
        activeHeightTo != null ||
        soilPh.isNotEmpty ||
        soilMoisture.isNotEmpty;
  }
}
