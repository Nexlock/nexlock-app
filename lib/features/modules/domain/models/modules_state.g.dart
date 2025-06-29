// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modules_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModulesState _$ModulesStateFromJson(Map<String, dynamic> json) =>
    _ModulesState(
      modules:
          (json['modules'] as List<dynamic>?)
              ?.map(
                (e) => GetModuleResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ModulesStateToJson(_ModulesState instance) =>
    <String, dynamic>{
      'modules': instance.modules,
      'isLoading': instance.isLoading,
      'error': instance.error,
    };
