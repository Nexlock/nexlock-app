// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_unlock_rental.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LockUnlockRental {

 String get rentalId; ActionType get action;
/// Create a copy of LockUnlockRental
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LockUnlockRentalCopyWith<LockUnlockRental> get copyWith => _$LockUnlockRentalCopyWithImpl<LockUnlockRental>(this as LockUnlockRental, _$identity);

  /// Serializes this LockUnlockRental to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LockUnlockRental&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rentalId,action);

@override
String toString() {
  return 'LockUnlockRental(rentalId: $rentalId, action: $action)';
}


}

/// @nodoc
abstract mixin class $LockUnlockRentalCopyWith<$Res>  {
  factory $LockUnlockRentalCopyWith(LockUnlockRental value, $Res Function(LockUnlockRental) _then) = _$LockUnlockRentalCopyWithImpl;
@useResult
$Res call({
 String rentalId, ActionType action
});




}
/// @nodoc
class _$LockUnlockRentalCopyWithImpl<$Res>
    implements $LockUnlockRentalCopyWith<$Res> {
  _$LockUnlockRentalCopyWithImpl(this._self, this._then);

  final LockUnlockRental _self;
  final $Res Function(LockUnlockRental) _then;

/// Create a copy of LockUnlockRental
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentalId = null,Object? action = null,}) {
  return _then(_self.copyWith(
rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionType,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LockUnlockRental implements LockUnlockRental {
  const _LockUnlockRental({required this.rentalId, required this.action});
  factory _LockUnlockRental.fromJson(Map<String, dynamic> json) => _$LockUnlockRentalFromJson(json);

@override final  String rentalId;
@override final  ActionType action;

/// Create a copy of LockUnlockRental
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LockUnlockRentalCopyWith<_LockUnlockRental> get copyWith => __$LockUnlockRentalCopyWithImpl<_LockUnlockRental>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LockUnlockRentalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LockUnlockRental&&(identical(other.rentalId, rentalId) || other.rentalId == rentalId)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rentalId,action);

@override
String toString() {
  return 'LockUnlockRental(rentalId: $rentalId, action: $action)';
}


}

/// @nodoc
abstract mixin class _$LockUnlockRentalCopyWith<$Res> implements $LockUnlockRentalCopyWith<$Res> {
  factory _$LockUnlockRentalCopyWith(_LockUnlockRental value, $Res Function(_LockUnlockRental) _then) = __$LockUnlockRentalCopyWithImpl;
@override @useResult
$Res call({
 String rentalId, ActionType action
});




}
/// @nodoc
class __$LockUnlockRentalCopyWithImpl<$Res>
    implements _$LockUnlockRentalCopyWith<$Res> {
  __$LockUnlockRentalCopyWithImpl(this._self, this._then);

  final _LockUnlockRental _self;
  final $Res Function(_LockUnlockRental) _then;

/// Create a copy of LockUnlockRental
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentalId = null,Object? action = null,}) {
  return _then(_LockUnlockRental(
rentalId: null == rentalId ? _self.rentalId : rentalId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionType,
  ));
}


}

// dart format on
