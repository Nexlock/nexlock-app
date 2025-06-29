// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_module_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetModuleByIdResponse _$GetModuleByIdResponseFromJson(
  Map<String, dynamic> json,
) => _GetModuleByIdResponse(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  location: json['location'] as String?,
  lockers:
      (json['lockers'] as List<dynamic>?)
          ?.map((e) => GetModuleByIdLocker.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$GetModuleByIdResponseToJson(
  _GetModuleByIdResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'location': instance.location,
  'lockers': instance.lockers,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
