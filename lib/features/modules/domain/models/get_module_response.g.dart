// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_module_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetModuleResponse _$GetModuleResponseFromJson(Map<String, dynamic> json) =>
    _GetModuleResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      location: json['location'] as String?,
      lockerCount: (json['lockerCount'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GetModuleResponseToJson(_GetModuleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'lockerCount': instance.lockerCount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
