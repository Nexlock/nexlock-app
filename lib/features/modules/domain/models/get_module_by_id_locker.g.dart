// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_module_by_id_locker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetModuleByIdLocker _$GetModuleByIdLockerFromJson(Map<String, dynamic> json) =>
    _GetModuleByIdLocker(
      id: json['id'] as String,
      lockerId: json['lockerId'] as String,
      isAvailable: json['isAvailable'] as bool,
      currentRental:
          json['currentRental'] == null
              ? null
              : LockerRental.fromJson(
                json['currentRental'] as Map<String, dynamic>,
              ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GetModuleByIdLockerToJson(
  _GetModuleByIdLocker instance,
) => <String, dynamic>{
  'id': instance.id,
  'lockerId': instance.lockerId,
  'isAvailable': instance.isAvailable,
  'currentRental': instance.currentRental,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
