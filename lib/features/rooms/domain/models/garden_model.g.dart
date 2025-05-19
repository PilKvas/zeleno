// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garden_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GardenModelImpl _$$GardenModelImplFromJson(Map<String, dynamic> json) =>
    _$GardenModelImpl(
      roomId: (json['room_id'] as num).toInt(),
      specieId: (json['specie_id'] as num).toInt(),
      parameters: json['parameters'] == null
          ? null
          : Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      customName: json['custom_name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$GardenModelImplToJson(_$GardenModelImpl instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'specie_id': instance.specieId,
      'parameters': instance.parameters,
      'custom_name': instance.customName,
      'description': instance.description,
    };

_$ParametersImpl _$$ParametersImplFromJson(Map<String, dynamic> json) =>
    _$ParametersImpl(
      lastWater: DateTime.parse(json['last_water'] as String),
      lastFertilizer: DateTime.parse(json['last_fertilizer'] as String),
      lastRepot: DateTime.parse(json['last_repot'] as String),
      lastPrun: DateTime.parse(json['last_prun'] as String),
      height: (json['height'] as num).toInt(),
      potDiameter: (json['pot_diameter'] as num).toInt(),
      potHeight: (json['pot_height'] as num).toInt(),
      currentState: json['current_state'] as String,
      exposure: json['exposure'] as String,
    );

Map<String, dynamic> _$$ParametersImplToJson(_$ParametersImpl instance) =>
    <String, dynamic>{
      'last_water': instance.lastWater.toIso8601String(),
      'last_fertilizer': instance.lastFertilizer.toIso8601String(),
      'last_repot': instance.lastRepot.toIso8601String(),
      'last_prun': instance.lastPrun.toIso8601String(),
      'height': instance.height,
      'pot_diameter': instance.potDiameter,
      'pot_height': instance.potHeight,
      'current_state': instance.currentState,
      'exposure': instance.exposure,
    };
