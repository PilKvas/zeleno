import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_wrapper_dto.g.dart';

part 'pagination_wrapper_dto.freezed.dart';

@Freezed(genericArgumentFactories: true)
class PaginationWrapperDto<T> with _$PaginationWrapperDto<T> {
  const factory PaginationWrapperDto({
    required int count,
    @Default([]) List<T> items,
  }) = _PaginationWrapperDto;

  factory PaginationWrapperDto.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationWrapperDtoFromJson(json, fromJsonT);
}
