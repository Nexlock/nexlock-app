// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RentalState {

 List<RentalModel> get rentals; bool get isLoading; String? get error;
/// Create a copy of RentalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RentalStateCopyWith<RentalState> get copyWith => _$RentalStateCopyWithImpl<RentalState>(this as RentalState, _$identity);

  /// Serializes this RentalState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RentalState&&const DeepCollectionEquality().equals(other.rentals, rentals)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(rentals),isLoading,error);

@override
String toString() {
  return 'RentalState(rentals: $rentals, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $RentalStateCopyWith<$Res>  {
  factory $RentalStateCopyWith(RentalState value, $Res Function(RentalState) _then) = _$RentalStateCopyWithImpl;
@useResult
$Res call({
 List<RentalModel> rentals, bool isLoading, String? error
});




}
/// @nodoc
class _$RentalStateCopyWithImpl<$Res>
    implements $RentalStateCopyWith<$Res> {
  _$RentalStateCopyWithImpl(this._self, this._then);

  final RentalState _self;
  final $Res Function(RentalState) _then;

/// Create a copy of RentalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentals = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
rentals: null == rentals ? _self.rentals : rentals // ignore: cast_nullable_to_non_nullable
as List<RentalModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RentalState implements RentalState {
  const _RentalState({final  List<RentalModel> rentals = const [], this.isLoading = false, this.error}): _rentals = rentals;
  factory _RentalState.fromJson(Map<String, dynamic> json) => _$RentalStateFromJson(json);

 final  List<RentalModel> _rentals;
@override@JsonKey() List<RentalModel> get rentals {
  if (_rentals is EqualUnmodifiableListView) return _rentals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentals);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of RentalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RentalStateCopyWith<_RentalState> get copyWith => __$RentalStateCopyWithImpl<_RentalState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RentalStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RentalState&&const DeepCollectionEquality().equals(other._rentals, _rentals)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rentals),isLoading,error);

@override
String toString() {
  return 'RentalState(rentals: $rentals, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RentalStateCopyWith<$Res> implements $RentalStateCopyWith<$Res> {
  factory _$RentalStateCopyWith(_RentalState value, $Res Function(_RentalState) _then) = __$RentalStateCopyWithImpl;
@override @useResult
$Res call({
 List<RentalModel> rentals, bool isLoading, String? error
});




}
/// @nodoc
class __$RentalStateCopyWithImpl<$Res>
    implements _$RentalStateCopyWith<$Res> {
  __$RentalStateCopyWithImpl(this._self, this._then);

  final _RentalState _self;
  final $Res Function(_RentalState) _then;

/// Create a copy of RentalState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentals = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_RentalState(
rentals: null == rentals ? _self._rentals : rentals // ignore: cast_nullable_to_non_nullable
as List<RentalModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
