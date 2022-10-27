import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/modules/home/data/models/location_details_model.dart';

part 'home_state_model.freezed.dart';
part 'home_state_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<LocationDetailsModel> list,
    String? id,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$HomeStateToJson(this);
}
