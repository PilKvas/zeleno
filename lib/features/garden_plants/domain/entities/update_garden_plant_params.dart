class UpdateGardenPlantParams {
  const UpdateGardenPlantParams({
    required this.plantId,
    required this.customName,
    this.roomId,
    this.sunlightExposure,
    this.plantSize,
    this.potSizeMm,
    this.lastWatering,
    this.lastWateringExactDate,
    this.lastRepotting,
    this.lastRepottingExactDate,
  });

  final int plantId;
  final String customName;
  final int? roomId;
  final String? sunlightExposure;
  final String? plantSize;
  final int? potSizeMm;
  final String? lastWatering;
  final String? lastWateringExactDate;
  final String? lastRepotting;
  final String? lastRepottingExactDate;
}
