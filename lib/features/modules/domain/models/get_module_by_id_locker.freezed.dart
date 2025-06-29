// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_module_by_id_locker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetModuleByIdLocker {

 String get id; String get lockerId; bool get isAvailable; LockerRental? get currentRental; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of GetModuleByIdLocker
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetModuleByIdLockerCopyWith<GetModuleByIdLocker> get copyWith => _$GetModuleByIdLockerCopyWithImpl<GetModuleByIdLocker>(this as GetModuleByIdLocker, _$identity);

  /// Serializes this GetModuleByIdLocker to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetModuleByIdLocker&&(identical(other.id, id) || other.id == id)&&(identical(other.lockerId, lockerId) || other.lockerId == lockerId)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.currentRental, currentRental) || other.currentRental == currentRental)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lockerId,isAvailable,currentRental,createdAt,updatedAt);

@override
String toString() {
  return 'GetModuleByIdLocker(id: $id, lockerId: $lockerId, isAvailable: $isAvailable, currentRental: $currentRental, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GetModuleByIdLockerCopyWith<$Res>  {
  factory $GetModuleByIdLockerCopyWith(GetModuleByIdLocker value, $Res Function(GetModuleByIdLocker) _then) = _$GetModuleByIdLockerCopyWithImpl;
@useResult
$Res call({
 String id, String lockerId, bool isAvailable, LockerRental? currentRental, DateTime? createdAt, DateTime? updatedAt
});


$LockerRentalCopyWith<$Res>? get currentRental;

}
/// @nodoc
class _$GetModuleByIdLockerCopyWithImpl<$Res>
    implements $GetModuleByIdLockerCopyWith<$Res> {
  _$GetModuleByIdLockerCopyWithImpl(this._self, this._then);

  final GetModuleByIdLocker _self;
  final $Res Function(GetModuleByIdLocker) _then;

/// Create a copy of GetModuleByIdLocker
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lockerId = null,Object? isAvailable = null,Object? currentRental = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lockerId: null == lockerId ? _self.lockerId : lockerId // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,currentRental: freezed == currentRental ? _self.currentRental : currentRental // ignore: cast_nullable_to_non_nullable
as LockerRental?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of GetModuleByIdLocker
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LockerRentalCopyWith<$Res>? get currentRental {
    if (_self.currentRental == null) {
    return null;
  }

  return $LockerRentalCopyWith<$Res>(_self.currentRental!, (value) {
    return _then(_self.copyWith(currentRental: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GetModuleByIdLocker implements GetModuleByIdLocker {
  const _GetModuleByIdLocker({required this.id, required this.lockerId, required this.isAvailable, this.currentRental, this.createdAt, this.updatedAt});
  factory _GetModuleByIdLocker.fromJson(Map<String, dynamic> json) => _$GetModuleByIdLockerFromJson(json);

@override final  String id;
@override final  String lockerId;
@override final  bool isAvailable;
@override final  LockerRental? currentRental;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of GetModuleByIdLocker
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetModuleByIdLockerCopyWith<_GetModuleByIdLocker> get copyWith => __$GetModuleByIdLockerCopyWithImpl<_GetModuleByIdLocker>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetModuleByIdLockerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetModuleByIdLocker&&(identical(other.id, id) || other.id == id)&&(identical(other.lockerId, lockerId) || other.lockerId == lockerId)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.currentRental, currentRental) || other.currentRental == currentRental)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lockerId,isAvailable,currentRental,createdAt,updatedAt);

@override
String toString() {
  return 'GetModuleByIdLocker(id: $id, lockerId: $lockerId, isAvailable: $isAvailable, currentRental: $currentRental, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GetModuleByIdLockerCopyWith<$Res> implements $GetModuleByIdLockerCopyWith<$Res> {
  factory _$GetModuleByIdLockerCopyWith(_GetModuleByIdLocker value, $Res Function(_GetModuleByIdLocker) _then) = __$GetModuleByIdLockerCopyWithImpl;
@override @useResult
$Res call({
 String id, String lockerId, bool isAvailable, LockerRental? currentRental, DateTime? createdAt, DateTime? updatedAt
});


@override $LockerRentalCopyWith<$Res>? get currentRental;

}
/// @nodoc
class __$GetModuleByIdLockerCopyWithImpl<$Res>
    implements _$GetModuleByIdLockerCopyWith<$Res> {
  __$GetModuleByIdLockerCopyWithImpl(this._self, this._then);

  final _GetModuleByIdLocker _self;
  final $Res Function(_GetModuleByIdLocker) _then;

/// Create a copy of GetModuleByIdLocker
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lockerId = null,Object? isAvailable = null,Object? currentRental = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_GetModuleByIdLocker(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lockerId: null == lockerId ? _self.lockerId : lockerId // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,currentRental: freezed == currentRental ? _self.currentRental : currentRental // ignore: cast_nullable_to_non_nullable
as LockerRental?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of GetModuleByIdLocker
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LockerRentalCopyWith<$Res>? get currentRental {
    if (_self.currentRental == null) {
    return null;
  }

  return $LockerRentalCopyWith<$Res>(_self.currentRental!, (value) {
    return _then(_self.copyWith(currentRental: value));
  });
}
}

// dart format on
