// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_unlock_rental.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LockUnlockRental _$LockUnlockRentalFromJson(Map<String, dynamic> json) =>
    _LockUnlockRental(
      rentalId: json['rentalId'] as String,
      action: $enumDecode(_$ActionTypeEnumMap, json['action']),
    );

Map<String, dynamic> _$LockUnlockRentalToJson(_LockUnlockRental instance) =>
    <String, dynamic>{
      'rentalId': instance.rentalId,
      'action': _$ActionTypeEnumMap[instance.action]!,
    };

const _$ActionTypeEnumMap = {
  ActionType.lock: 'lock',
  ActionType.unlock: 'unlock',
};
