import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_details_model.freezed.dart';
part 'location_details_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class LocationDetailsModel with _$LocationDetailsModel {
  factory LocationDetailsModel({
    String? imageUrl,
    String? locationName,
    String? locationDetails,
    String? description,
    double? rating,
    double? rate,
    bool? isFavorite,
  }) = _LocationDetailsModel;

  factory LocationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LocationDetailsModelToJson(this);
}
