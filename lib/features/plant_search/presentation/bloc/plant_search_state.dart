part of 'plant_search_bloc.dart';

@freezed
class PlantSearchState with _$PlantSearchState {
  const factory PlantSearchState({
    String? name,
    @Default(false) bool isPaginating,
    @Default(false) bool hasReachedEnd,
    @Default(Status.loading) Status status,
    @Default([]) List<PlantSearchItem> items,
    @Default(PlantSearchFilters()) PlantSearchFilters filters,
  }) = _PlantSearchState;
}
