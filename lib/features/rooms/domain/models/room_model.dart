import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
class RoomModel with _$RoomModel {
  const factory RoomModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "hemisphere") String? hemisphere,
    @JsonKey(name: "temperature") int? temperature,
    @JsonKey(name: "humidity") int? humidity,
    @JsonKey(name: "window_side") String? windowSide,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
