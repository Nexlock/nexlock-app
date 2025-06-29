// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LockerModel {

 String get id; String get lockerId; String get moduleId; RentalModule get module; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of LockerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LockerModelCopyWith<LockerModel> get copyWith => _$LockerModelCopyWithImpl<LockerModel>(this as LockerModel, _$identity);

  /// Serializes this LockerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LockerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lockerId, lockerId) || other.lockerId == lockerId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.module, module) || other.module == module)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lockerId,moduleId,module,createdAt,updatedAt);

@override
String toString() {
  return 'LockerModel(id: $id, lockerId: $lockerId, moduleId: $moduleId, module: $module, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $LockerModelCopyWith<$Res>  {
  factory $LockerModelCopyWith(LockerModel value, $Res Function(LockerModel) _then) = _$LockerModelCopyWithImpl;
@useResult
$Res call({
 String id, String lockerId, String moduleId, RentalModule module, DateTime createdAt, DateTime updatedAt
});


$RentalModuleCopyWith<$Res> get module;

}
/// @nodoc
class _$LockerModelCopyWithImpl<$Res>
    implements $LockerModelCopyWith<$Res> {
  _$LockerModelCopyWithImpl(this._self, this._then);

  final LockerModel _self;
  final $Res Function(LockerModel) _then;

/// Create a copy of LockerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lockerId = null,Object? moduleId = null,Object? module = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lockerId: null == lockerId ? _self.lockerId : lockerId // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as RentalModule,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of LockerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RentalModuleCopyWith<$Res> get module {
  
  return $RentalModuleCopyWith<$Res>(_self.module, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _LockerModel implements LockerModel {
  const _LockerModel({required this.id, required this.lockerId, required this.moduleId, required this.module, required this.createdAt, required this.updatedAt});
  factory _LockerModel.fromJson(Map<String, dynamic> json) => _$LockerModelFromJson(json);

@override final  String id;
@override final  String lockerId;
@override final  String moduleId;
@override final  RentalModule module;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of LockerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LockerModelCopyWith<_LockerModel> get copyWith => __$LockerModelCopyWithImpl<_LockerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LockerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LockerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lockerId, lockerId) || other.lockerId == lockerId)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.module, module) || other.module == module)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lockerId,moduleId,module,createdAt,updatedAt);

@override
String toString() {
  return 'LockerModel(id: $id, lockerId: $lockerId, moduleId: $moduleId, module: $module, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LockerModelCopyWith<$Res> implements $LockerModelCopyWith<$Res> {
  factory _$LockerModelCopyWith(_LockerModel value, $Res Function(_LockerModel) _then) = __$LockerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String lockerId, String moduleId, RentalModule module, DateTime createdAt, DateTime updatedAt
});


@override $RentalModuleCopyWith<$Res> get module;

}
/// @nodoc
class __$LockerModelCopyWithImpl<$Res>
    implements _$LockerModelCopyWith<$Res> {
  __$LockerModelCopyWithImpl(this._self, this._then);

  final _LockerModel _self;
  final $Res Function(_LockerModel) _then;

/// Create a copy of LockerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lockerId = null,Object? moduleId = null,Object? module = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_LockerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lockerId: null == lockerId ? _self.lockerId : lockerId // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as RentalModule,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of LockerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RentalModuleCopyWith<$Res> get module {
  
  return $RentalModuleCopyWith<$Res>(_self.module, (value) {
    return _then(_self.copyWith(module: value));
  });
}
}

// dart format on
