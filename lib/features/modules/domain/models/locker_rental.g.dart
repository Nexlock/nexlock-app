// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker_rental.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LockerRental _$LockerRentalFromJson(Map<String, dynamic> json) =>
    _LockerRental(
      id: json['id'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      isLocked: json['isLocked'] as bool,
      userId: json['userId'] as String,
      isOwnRental: json['isOwnRental'] as bool,
      endDate:
          json['endDate'] == null
              ? null
              : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$LockerRentalToJson(_LockerRental instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isLocked': instance.isLocked,
      'userId': instance.userId,
      'isOwnRental': instance.isOwnRental,
      'endDate': instance.endDate?.toIso8601String(),
    };
