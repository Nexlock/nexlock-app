// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modules_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModulesState {

 List<GetModuleResponse> get modules; bool get isLoading; String? get error;
/// Create a copy of ModulesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModulesStateCopyWith<ModulesState> get copyWith => _$ModulesStateCopyWithImpl<ModulesState>(this as ModulesState, _$identity);

  /// Serializes this ModulesState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModulesState&&const DeepCollectionEquality().equals(other.modules, modules)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(modules),isLoading,error);

@override
String toString() {
  return 'ModulesState(modules: $modules, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $ModulesStateCopyWith<$Res>  {
  factory $ModulesStateCopyWith(ModulesState value, $Res Function(ModulesState) _then) = _$ModulesStateCopyWithImpl;
@useResult
$Res call({
 List<GetModuleResponse> modules, bool isLoading, String? error
});




}
/// @nodoc
class _$ModulesStateCopyWithImpl<$Res>
    implements $ModulesStateCopyWith<$Res> {
  _$ModulesStateCopyWithImpl(this._self, this._then);

  final ModulesState _self;
  final $Res Function(ModulesState) _then;

/// Create a copy of ModulesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modules = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as List<GetModuleResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ModulesState implements ModulesState {
  const _ModulesState({final  List<GetModuleResponse> modules = const [], this.isLoading = false, this.error}): _modules = modules;
  factory _ModulesState.fromJson(Map<String, dynamic> json) => _$ModulesStateFromJson(json);

 final  List<GetModuleResponse> _modules;
@override@JsonKey() List<GetModuleResponse> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of ModulesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModulesStateCopyWith<_ModulesState> get copyWith => __$ModulesStateCopyWithImpl<_ModulesState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModulesStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModulesState&&const DeepCollectionEquality().equals(other._modules, _modules)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_modules),isLoading,error);

@override
String toString() {
  return 'ModulesState(modules: $modules, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ModulesStateCopyWith<$Res> implements $ModulesStateCopyWith<$Res> {
  factory _$ModulesStateCopyWith(_ModulesState value, $Res Function(_ModulesState) _then) = __$ModulesStateCopyWithImpl;
@override @useResult
$Res call({
 List<GetModuleResponse> modules, bool isLoading, String? error
});




}
/// @nodoc
class __$ModulesStateCopyWithImpl<$Res>
    implements _$ModulesStateCopyWith<$Res> {
  __$ModulesStateCopyWithImpl(this._self, this._then);

  final _ModulesState _self;
  final $Res Function(_ModulesState) _then;

/// Create a copy of ModulesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modules = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_ModulesState(
modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<GetModuleResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
