// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LockerModel _$LockerModelFromJson(Map<String, dynamic> json) => _LockerModel(
  id: json['id'] as String,
  lockerId: json['lockerId'] as String,
  moduleId: json['moduleId'] as String,
  module: RentalModule.fromJson(json['module'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$LockerModelToJson(_LockerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lockerId': instance.lockerId,
      'moduleId': instance.moduleId,
      'module': instance.module,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
