import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_garden_room_body.freezed.dart';
part 'create_garden_room_body.g.dart';

/// Тело запроса `POST /api/garden/rooms`.
@freezed
class CreateGardenRoomBody with _$CreateGardenRoomBody {
  const factory CreateGardenRoomBody({
    required String name,
  }) = _CreateGardenRoomBody;

  factory CreateGardenRoomBody.fromJson(Map<String, dynamic> json) =>
      _$CreateGardenRoomBodyFromJson(json);
}
