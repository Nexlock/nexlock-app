// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extend_rental.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtendRental {

 String get rentalId; int get hours;
/// Create a copy of ExtendRental
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendRentalCopyWith<ExtendRental> get copyWith => _$ExtendRentalCopyWithImpl<ExtendRental>(this as ExtendRental, _$identity);

  /// Serializes this ExtendRental to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendRental&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.hours, hours) || other.hours == hours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rentalId,hours);

@override
String toString() {
  return 'ExtendRental(rentalId: $rentalId, hours: $hours)';
}


}

/// @nodoc
abstract mixin class $ExtendRentalCopyWith<$Res>  {
  factory $ExtendRentalCopyWith(ExtendRental value, $Res Function(ExtendRental) _then) = _$ExtendRentalCopyWithImpl;
@useResult
$Res call({
 String rentalId, int hours
});




}
/// @nodoc
class _$ExtendRentalCopyWithImpl<$Res>
    implements $ExtendRentalCopyWith<$Res> {
  _$ExtendRentalCopyWithImpl(this._self, this._then);

  final ExtendRental _self;
  final $Res Function(ExtendRental) _then;

/// Create a copy of ExtendRental
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentalId = null,Object? hours = null,}) {
  return _then(_self.copyWith(
rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ExtendRental implements ExtendRental {
  const _ExtendRental({required this.rentalId, required this.hours});
  factory _ExtendRental.fromJson(Map<String, dynamic> json) => _$ExtendRentalFromJson(json);

@override final  String rentalId;
@override final  int hours;

/// Create a copy of ExtendRental
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtendRentalCopyWith<_ExtendRental> get copyWith => __$ExtendRentalCopyWithImpl<_ExtendRental>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtendRentalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtendRental&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.hours, hours) || other.hours == hours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rentalId,hours);

@override
String toString() {
  return 'ExtendRental(rentalId: $rentalId, hours: $hours)';
}


}

/// @nodoc
abstract mixin class _$ExtendRentalCopyWith<$Res> implements $ExtendRentalCopyWith<$Res> {
  factory _$ExtendRentalCopyWith(_ExtendRental value, $Res Function(_ExtendRental) _then) = __$ExtendRentalCopyWithImpl;
@override @useResult
$Res call({
 String rentalId, int hours
});




}
/// @nodoc
class __$ExtendRentalCopyWithImpl<$Res>
    implements _$ExtendRentalCopyWith<$Res> {
  __$ExtendRentalCopyWithImpl(this._self, this._then);

  final _ExtendRental _self;
  final $Res Function(_ExtendRental) _then;

/// Create a copy of ExtendRental
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentalId = null,Object? hours = null,}) {
  return _then(_ExtendRental(
rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,hours: null == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
