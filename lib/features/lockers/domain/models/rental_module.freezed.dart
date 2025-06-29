// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RentalModule {

 String get id; String get name; String get deviceId;
/// Create a copy of RentalModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RentalModuleCopyWith<RentalModule> get copyWith => _$RentalModuleCopyWithImpl<RentalModule>(this as RentalModule, _$identity);

  /// Serializes this RentalModule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RentalModule&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,deviceId);

@override
String toString() {
  return 'RentalModule(id: $id, name: $name, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $RentalModuleCopyWith<$Res>  {
  factory $RentalModuleCopyWith(RentalModule value, $Res Function(RentalModule) _then) = _$RentalModuleCopyWithImpl;
@useResult
$Res call({
 String id, String name, String deviceId
});




}
/// @nodoc
class _$RentalModuleCopyWithImpl<$Res>
    implements $RentalModuleCopyWith<$Res> {
  _$RentalModuleCopyWithImpl(this._self, this._then);

  final RentalModule _self;
  final $Res Function(RentalModule) _then;

/// Create a copy of RentalModule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? deviceId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RentalModule implements RentalModule {
  const _RentalModule({required this.id, required this.name, required this.deviceId});
  factory _RentalModule.fromJson(Map<String, dynamic> json) => _$RentalModuleFromJson(json);

@override final  String id;
@override final  String name;
@override final  String deviceId;

/// Create a copy of RentalModule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RentalModuleCopyWith<_RentalModule> get copyWith => __$RentalModuleCopyWithImpl<_RentalModule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RentalModuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RentalModule&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,deviceId);

@override
String toString() {
  return 'RentalModule(id: $id, name: $name, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$RentalModuleCopyWith<$Res> implements $RentalModuleCopyWith<$Res> {
  factory _$RentalModuleCopyWith(_RentalModule value, $Res Function(_RentalModule) _then) = __$RentalModuleCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String deviceId
});




}
/// @nodoc
class __$RentalModuleCopyWithImpl<$Res>
    implements _$RentalModuleCopyWith<$Res> {
  __$RentalModuleCopyWithImpl(this._self, this._then);

  final _RentalModule _self;
  final $Res Function(_RentalModule) _then;

/// Create a copy of RentalModule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? deviceId = null,}) {
  return _then(_RentalModule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
