// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_module_by_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetModuleByIdResponse {

 String get id; String get name; String? get description; String? get location; List<GetModuleByIdLocker> get lockers; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of GetModuleByIdResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetModuleByIdResponseCopyWith<GetModuleByIdResponse> get copyWith => _$GetModuleByIdResponseCopyWithImpl<GetModuleByIdResponse>(this as GetModuleByIdResponse, _$identity);

  /// Serializes this GetModuleByIdResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetModuleByIdResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.lockers, lockers)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,location,const DeepCollectionEquality().hash(lockers),createdAt,updatedAt);

@override
String toString() {
  return 'GetModuleByIdResponse(id: $id, name: $name, description: $description, location: $location, lockers: $lockers, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GetModuleByIdResponseCopyWith<$Res>  {
  factory $GetModuleByIdResponseCopyWith(GetModuleByIdResponse value, $Res Function(GetModuleByIdResponse) _then) = _$GetModuleByIdResponseCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String? location, List<GetModuleByIdLocker> lockers, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$GetModuleByIdResponseCopyWithImpl<$Res>
    implements $GetModuleByIdResponseCopyWith<$Res> {
  _$GetModuleByIdResponseCopyWithImpl(this._self, this._then);

  final GetModuleByIdResponse _self;
  final $Res Function(GetModuleByIdResponse) _then;

/// Create a copy of GetModuleByIdResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? location = freezed,Object? lockers = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,lockers: null == lockers ? _self.lockers : lockers // ignore: cast_nullable_to_non_nullable
as List<GetModuleByIdLocker>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetModuleByIdResponse implements GetModuleByIdResponse {
  const _GetModuleByIdResponse({required this.id, required this.name, this.description, this.location, final  List<GetModuleByIdLocker> lockers = const [], required this.createdAt, required this.updatedAt}): _lockers = lockers;
  factory _GetModuleByIdResponse.fromJson(Map<String, dynamic> json) => _$GetModuleByIdResponseFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  String? location;
 final  List<GetModuleByIdLocker> _lockers;
@override@JsonKey() List<GetModuleByIdLocker> get lockers {
  if (_lockers is EqualUnmodifiableListView) return _lockers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lockers);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of GetModuleByIdResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetModuleByIdResponseCopyWith<_GetModuleByIdResponse> get copyWith => __$GetModuleByIdResponseCopyWithImpl<_GetModuleByIdResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetModuleByIdResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetModuleByIdResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._lockers, _lockers)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,location,const DeepCollectionEquality().hash(_lockers),createdAt,updatedAt);

@override
String toString() {
  return 'GetModuleByIdResponse(id: $id, name: $name, description: $description, location: $location, lockers: $lockers, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GetModuleByIdResponseCopyWith<$Res> implements $GetModuleByIdResponseCopyWith<$Res> {
  factory _$GetModuleByIdResponseCopyWith(_GetModuleByIdResponse value, $Res Function(_GetModuleByIdResponse) _then) = __$GetModuleByIdResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String? location, List<GetModuleByIdLocker> lockers, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$GetModuleByIdResponseCopyWithImpl<$Res>
    implements _$GetModuleByIdResponseCopyWith<$Res> {
  __$GetModuleByIdResponseCopyWithImpl(this._self, this._then);

  final _GetModuleByIdResponse _self;
  final $Res Function(_GetModuleByIdResponse) _then;

/// Create a copy of GetModuleByIdResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? location = freezed,Object? lockers = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_GetModuleByIdResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,lockers: null == lockers ? _self._lockers : lockers // ignore: cast_nullable_to_non_nullable
as List<GetModuleByIdLocker>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
