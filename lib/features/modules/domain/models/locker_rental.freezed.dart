// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locker_rental.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LockerRental {

 String get id; DateTime get startDate; DateTime get expiresAt; bool get isLocked; String? get userId;// Made nullable
 bool get isOwnRental; DateTime? get endDate;
/// Create a copy of LockerRental
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LockerRentalCopyWith<LockerRental> get copyWith => _$LockerRentalCopyWithImpl<LockerRental>(this as LockerRental, _$identity);

  /// Serializes this LockerRental to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LockerRental&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isOwnRental, isOwnRental) || other.isOwnRental == isOwnRental)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,expiresAt,isLocked,userId,isOwnRental,endDate);

@override
String toString() {
  return 'LockerRental(id: $id, startDate: $startDate, expiresAt: $expiresAt, isLocked: $isLocked, userId: $userId, isOwnRental: $isOwnRental, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $LockerRentalCopyWith<$Res>  {
  factory $LockerRentalCopyWith(LockerRental value, $Res Function(LockerRental) _then) = _$LockerRentalCopyWithImpl;
@useResult
$Res call({
 String id, DateTime startDate, DateTime expiresAt, bool isLocked, String? userId, bool isOwnRental, DateTime? endDate
});




}
/// @nodoc
class _$LockerRentalCopyWithImpl<$Res>
    implements $LockerRentalCopyWith<$Res> {
  _$LockerRentalCopyWithImpl(this._self, this._then);

  final LockerRental _self;
  final $Res Function(LockerRental) _then;

/// Create a copy of LockerRental
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? startDate = null,Object? expiresAt = null,Object? isLocked = null,Object? userId = freezed,Object? isOwnRental = null,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,isOwnRental: null == isOwnRental ? _self.isOwnRental : isOwnRental // ignore: cast_nullable_to_non_nullable
as bool,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LockerRental implements LockerRental {
  const _LockerRental({required this.id, required this.startDate, required this.expiresAt, required this.isLocked, this.userId, required this.isOwnRental, this.endDate});
  factory _LockerRental.fromJson(Map<String, dynamic> json) => _$LockerRentalFromJson(json);

@override final  String id;
@override final  DateTime startDate;
@override final  DateTime expiresAt;
@override final  bool isLocked;
@override final  String? userId;
// Made nullable
@override final  bool isOwnRental;
@override final  DateTime? endDate;

/// Create a copy of LockerRental
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LockerRentalCopyWith<_LockerRental> get copyWith => __$LockerRentalCopyWithImpl<_LockerRental>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LockerRentalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LockerRental&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isOwnRental, isOwnRental) || other.isOwnRental == isOwnRental)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,startDate,expiresAt,isLocked,userId,isOwnRental,endDate);

@override
String toString() {
  return 'LockerRental(id: $id, startDate: $startDate, expiresAt: $expiresAt, isLocked: $isLocked, userId: $userId, isOwnRental: $isOwnRental, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$LockerRentalCopyWith<$Res> implements $LockerRentalCopyWith<$Res> {
  factory _$LockerRentalCopyWith(_LockerRental value, $Res Function(_LockerRental) _then) = __$LockerRentalCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime startDate, DateTime expiresAt, bool isLocked, String? userId, bool isOwnRental, DateTime? endDate
});




}
/// @nodoc
class __$LockerRentalCopyWithImpl<$Res>
    implements _$LockerRentalCopyWith<$Res> {
  __$LockerRentalCopyWithImpl(this._self, this._then);

  final _LockerRental _self;
  final $Res Function(_LockerRental) _then;

/// Create a copy of LockerRental
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startDate = null,Object? expiresAt = null,Object? isLocked = null,Object? userId = freezed,Object? isOwnRental = null,Object? endDate = freezed,}) {
  return _then(_LockerRental(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,isOwnRental: null == isOwnRental ? _self.isOwnRental : isOwnRental // ignore: cast_nullable_to_non_nullable
as bool,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
