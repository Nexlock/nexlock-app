// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RentalModel _$RentalModelFromJson(Map<String, dynamic> json) => _RentalModel(
  id: json['id'] as String,
  lockerId: json['lockerId'] as String,
  userId: json['userId'] as String,
  locker: LockerModel.fromJson(json['locker'] as Map<String, dynamic>),
  startDate: DateTime.parse(json['startDate'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  isLocked: json['isLocked'] as bool,
);

Map<String, dynamic> _$RentalModelToJson(_RentalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lockerId': instance.lockerId,
      'userId': instance.userId,
      'locker': instance.locker,
      'startDate': instance.startDate.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isLocked': instance.isLocked,
    };
