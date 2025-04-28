// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_wrapper_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationWrapperDtoImpl<T> _$$PaginationWrapperDtoImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationWrapperDtoImpl<T>(
      count: (json['count'] as num).toInt(),
      items: (json['items'] as List<dynamic>?)?.map(fromJsonT).toList() ??
          const [],
    );

Map<String, dynamic> _$$PaginationWrapperDtoImplToJson<T>(
  _$PaginationWrapperDtoImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items.map(toJsonT).toList(),
    };
