part of 'plant_details_cubit.dart';

@freezed
class PlantDetailsState with _$PlantDetailsState {
  const factory PlantDetailsState({
    required Status status,
    PlantDetailsModel? plantDetails,
  }) = _PlantDetailsState;
}
