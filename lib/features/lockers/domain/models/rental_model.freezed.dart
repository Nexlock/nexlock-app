// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RentalModel {

 String get id; String get lockerId; String get userId; LockerModel get locker; DateTime get startDate; DateTime get expiresAt; bool get isLocked;
/// Create a copy of RentalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RentalModelCopyWith<RentalModel> get copyWith => _$RentalModelCopyWithImpl<RentalModel>(this as RentalModel, _$identity);

  /// Serializes this RentalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RentalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lockerId, lockerId) || other.lockerId == lockerId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.locker, locker) || other.locker == locker)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lockerId,userId,locker,startDate,expiresAt,isLocked);

@override
String toString() {
  return 'RentalModel(id: $id, lockerId: $lockerId, userId: $userId, locker: $locker, startDate: $startDate, expiresAt: $expiresAt, isLocked: $isLocked)';
}


}

/// @nodoc
abstract mixin class $RentalModelCopyWith<$Res>  {
  factory $RentalModelCopyWith(RentalModel value, $Res Function(RentalModel) _then) = _$RentalModelCopyWithImpl;
@useResult
$Res call({
 String id, String lockerId, String userId, LockerModel locker, DateTime startDate, DateTime expiresAt, bool isLocked
});


$LockerModelCopyWith<$Res> get locker;

}
/// @nodoc
class _$RentalModelCopyWithImpl<$Res>
    implements $RentalModelCopyWith<$Res> {
  _$RentalModelCopyWithImpl(this._self, this._then);

  final RentalModel _self;
  final $Res Function(RentalModel) _then;

/// Create a copy of RentalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lockerId = null,Object? userId = null,Object? locker = null,Object? startDate = null,Object? expiresAt = null,Object? isLocked = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lockerId: null == lockerId ? _self.lockerId : lockerId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,locker: null == locker ? _self.locker : locker // ignore: cast_nullable_to_non_nullable
as LockerModel,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of RentalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LockerModelCopyWith<$Res> get locker {
  
  return $LockerModelCopyWith<$Res>(_self.locker, (value) {
    return _then(_self.copyWith(locker: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RentalModel implements RentalModel {
  const _RentalModel({required this.id, required this.lockerId, required this.userId, required this.locker, required this.startDate, required this.expiresAt, required this.isLocked});
  factory _RentalModel.fromJson(Map<String, dynamic> json) => _$RentalModelFromJson(json);

@override final  String id;
@override final  String lockerId;
@override final  String userId;
@override final  LockerModel locker;
@override final  DateTime startDate;
@override final  DateTime expiresAt;
@override final  bool isLocked;

/// Create a copy of RentalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RentalModelCopyWith<_RentalModel> get copyWith => __$RentalModelCopyWithImpl<_RentalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RentalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RentalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lockerId, lockerId) || other.lockerId == lockerId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.locker, locker) || other.locker == locker)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lockerId,userId,locker,startDate,expiresAt,isLocked);

@override
String toString() {
  return 'RentalModel(id: $id, lockerId: $lockerId, userId: $userId, locker: $locker, startDate: $startDate, expiresAt: $expiresAt, isLocked: $isLocked)';
}


}

/// @nodoc
abstract mixin class _$RentalModelCopyWith<$Res> implements $RentalModelCopyWith<$Res> {
  factory _$RentalModelCopyWith(_RentalModel value, $Res Function(_RentalModel) _then) = __$RentalModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String lockerId, String userId, LockerModel locker, DateTime startDate, DateTime expiresAt, bool isLocked
});


@override $LockerModelCopyWith<$Res> get locker;

}
/// @nodoc
class __$RentalModelCopyWithImpl<$Res>
    implements _$RentalModelCopyWith<$Res> {
  __$RentalModelCopyWithImpl(this._self, this._then);

  final _RentalModel _self;
  final $Res Function(_RentalModel) _then;

/// Create a copy of RentalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lockerId = null,Object? userId = null,Object? locker = null,Object? startDate = null,Object? expiresAt = null,Object? isLocked = null,}) {
  return _then(_RentalModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lockerId: null == lockerId ? _self.lockerId : lockerId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,locker: null == locker ? _self.locker : locker // ignore: cast_nullable_to_non_nullable
as LockerModel,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of RentalModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LockerModelCopyWith<$Res> get locker {
  
  return $LockerModelCopyWith<$Res>(_self.locker, (value) {
    return _then(_self.copyWith(locker: value));
  });
}
}

// dart format on
