class UpdateGardenRoomParams {
  const UpdateGardenRoomParams({
    required this.roomId,
    required this.name,
    this.temperatureCelsius,
    this.humidityPercent,
    this.illuminanceLux,
    this.windowDirection,
  });

  final int roomId;
  final String name;
  final double? temperatureCelsius;
  final int? humidityPercent;
  final int? illuminanceLux;
  final String? windowDirection;
}
