// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_jwt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserJwtModel {

 String get id; String get email; String get name; String get type;
/// Create a copy of UserJwtModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserJwtModelCopyWith<UserJwtModel> get copyWith => _$UserJwtModelCopyWithImpl<UserJwtModel>(this as UserJwtModel, _$identity);

  /// Serializes this UserJwtModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserJwtModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,name,type);

@override
String toString() {
  return 'UserJwtModel(id: $id, email: $email, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $UserJwtModelCopyWith<$Res>  {
  factory $UserJwtModelCopyWith(UserJwtModel value, $Res Function(UserJwtModel) _then) = _$UserJwtModelCopyWithImpl;
@useResult
$Res call({
 String id, String email, String name, String type
});




}
/// @nodoc
class _$UserJwtModelCopyWithImpl<$Res>
    implements $UserJwtModelCopyWith<$Res> {
  _$UserJwtModelCopyWithImpl(this._self, this._then);

  final UserJwtModel _self;
  final $Res Function(UserJwtModel) _then;

/// Create a copy of UserJwtModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? name = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserJwtModel implements UserJwtModel {
  const _UserJwtModel({required this.id, required this.email, required this.name, required this.type});
  factory _UserJwtModel.fromJson(Map<String, dynamic> json) => _$UserJwtModelFromJson(json);

@override final  String id;
@override final  String email;
@override final  String name;
@override final  String type;

/// Create a copy of UserJwtModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserJwtModelCopyWith<_UserJwtModel> get copyWith => __$UserJwtModelCopyWithImpl<_UserJwtModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserJwtModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserJwtModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,name,type);

@override
String toString() {
  return 'UserJwtModel(id: $id, email: $email, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$UserJwtModelCopyWith<$Res> implements $UserJwtModelCopyWith<$Res> {
  factory _$UserJwtModelCopyWith(_UserJwtModel value, $Res Function(_UserJwtModel) _then) = __$UserJwtModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String name, String type
});




}
/// @nodoc
class __$UserJwtModelCopyWithImpl<$Res>
    implements _$UserJwtModelCopyWith<$Res> {
  __$UserJwtModelCopyWithImpl(this._self, this._then);

  final _UserJwtModel _self;
  final $Res Function(_UserJwtModel) _then;

/// Create a copy of UserJwtModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? name = null,Object? type = null,}) {
  return _then(_UserJwtModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
