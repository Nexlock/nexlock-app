// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_module_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetModuleResponse {

 String get id; String get name; String? get description; String? get location; int get lockerCount; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of GetModuleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetModuleResponseCopyWith<GetModuleResponse> get copyWith => _$GetModuleResponseCopyWithImpl<GetModuleResponse>(this as GetModuleResponse, _$identity);

  /// Serializes this GetModuleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetModuleResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.lockerCount, lockerCount) || other.lockerCount == lockerCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,location,lockerCount,createdAt,updatedAt);

@override
String toString() {
  return 'GetModuleResponse(id: $id, name: $name, description: $description, location: $location, lockerCount: $lockerCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GetModuleResponseCopyWith<$Res>  {
  factory $GetModuleResponseCopyWith(GetModuleResponse value, $Res Function(GetModuleResponse) _then) = _$GetModuleResponseCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String? location, int lockerCount, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$GetModuleResponseCopyWithImpl<$Res>
    implements $GetModuleResponseCopyWith<$Res> {
  _$GetModuleResponseCopyWithImpl(this._self, this._then);

  final GetModuleResponse _self;
  final $Res Function(GetModuleResponse) _then;

/// Create a copy of GetModuleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? location = freezed,Object? lockerCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,lockerCount: null == lockerCount ? _self.lockerCount : lockerCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetModuleResponse implements GetModuleResponse {
  const _GetModuleResponse({required this.id, required this.name, this.description, this.location, required this.lockerCount, required this.createdAt, required this.updatedAt});
  factory _GetModuleResponse.fromJson(Map<String, dynamic> json) => _$GetModuleResponseFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  String? location;
@override final  int lockerCount;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of GetModuleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetModuleResponseCopyWith<_GetModuleResponse> get copyWith => __$GetModuleResponseCopyWithImpl<_GetModuleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetModuleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetModuleResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.lockerCount, lockerCount) || other.lockerCount == lockerCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,location,lockerCount,createdAt,updatedAt);

@override
String toString() {
  return 'GetModuleResponse(id: $id, name: $name, description: $description, location: $location, lockerCount: $lockerCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GetModuleResponseCopyWith<$Res> implements $GetModuleResponseCopyWith<$Res> {
  factory _$GetModuleResponseCopyWith(_GetModuleResponse value, $Res Function(_GetModuleResponse) _then) = __$GetModuleResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String? location, int lockerCount, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$GetModuleResponseCopyWithImpl<$Res>
    implements _$GetModuleResponseCopyWith<$Res> {
  __$GetModuleResponseCopyWithImpl(this._self, this._then);

  final _GetModuleResponse _self;
  final $Res Function(_GetModuleResponse) _then;

/// Create a copy of GetModuleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? location = freezed,Object? lockerCount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_GetModuleResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,lockerCount: null == lockerCount ? _self.lockerCount : lockerCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
