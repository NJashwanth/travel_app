// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LocationDetailsModelToJson(
        LocationDetailsModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'locationName': instance.locationName,
      'locationDetails': instance.locationDetails,
      'description': instance.description,
      'rating': instance.rating,
      'rate': instance.rate,
      'isFavorite': instance.isFavorite,
    };

_$_LocationDetailsModel _$$_LocationDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_LocationDetailsModel(
      imageUrl: json['imageUrl'] as String?,
      locationName: json['locationName'] as String?,
      locationDetails: json['locationDetails'] as String?,
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      rate: (json['rate'] as num?)?.toDouble(),
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$_LocationDetailsModelToJson(
        _$_LocationDetailsModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'locationName': instance.locationName,
      'locationDetails': instance.locationDetails,
      'description': instance.description,
      'rating': instance.rating,
      'rate': instance.rate,
      'isFavorite': instance.isFavorite,
    };
