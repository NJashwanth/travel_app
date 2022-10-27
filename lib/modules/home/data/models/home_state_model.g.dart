// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$HomeStateToJson(HomeState instance) => <String, dynamic>{
      'isLoading': instance.isLoading,
      'list': instance.list,
      'id': instance.id,
    };

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      isLoading: json['isLoading'] as bool? ?? false,
      list: (json['list'] as List<dynamic>?)
              ?.map((e) =>
                  LocationDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'list': instance.list,
      'id': instance.id,
    };
