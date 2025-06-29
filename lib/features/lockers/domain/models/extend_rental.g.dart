// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extend_rental.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExtendRental _$ExtendRentalFromJson(Map<String, dynamic> json) =>
    _ExtendRental(
      rentalId: json['rentalId'] as String,
      hours: (json['hours'] as num).toInt(),
    );

Map<String, dynamic> _$ExtendRentalToJson(_ExtendRental instance) =>
    <String, dynamic>{'rentalId': instance.rentalId, 'hours': instance.hours};
