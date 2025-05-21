import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_wrapper.freezed.dart';

@Freezed(genericArgumentFactories: true)
class PaginationWrapper<T> with _$PaginationWrapper<T> {
  const factory PaginationWrapper({
    required int count,
    @Default([]) List<T> items,
  }) = _PaginationWrapper;
}
