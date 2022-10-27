// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDetailsModel _$LocationDetailsModelFromJson(Map<String, dynamic> json) {
  return _LocationDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$LocationDetailsModel {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;
  String? get locationDetails => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDetailsModelCopyWith<LocationDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsModelCopyWith<$Res> {
  factory $LocationDetailsModelCopyWith(LocationDetailsModel value,
          $Res Function(LocationDetailsModel) then) =
      _$LocationDetailsModelCopyWithImpl<$Res, LocationDetailsModel>;
  @useResult
  $Res call(
      {String? imageUrl,
      String? locationName,
      String? locationDetails,
      String? description,
      double? rating,
      double? rate,
      bool? isFavorite});
}

/// @nodoc
class _$LocationDetailsModelCopyWithImpl<$Res,
        $Val extends LocationDetailsModel>
    implements $LocationDetailsModelCopyWith<$Res> {
  _$LocationDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? locationName = freezed,
    Object? locationDetails = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? rate = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationDetails: freezed == locationDetails
          ? _value.locationDetails
          : locationDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationDetailsModelCopyWith<$Res>
    implements $LocationDetailsModelCopyWith<$Res> {
  factory _$$_LocationDetailsModelCopyWith(_$_LocationDetailsModel value,
          $Res Function(_$_LocationDetailsModel) then) =
      __$$_LocationDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imageUrl,
      String? locationName,
      String? locationDetails,
      String? description,
      double? rating,
      double? rate,
      bool? isFavorite});
}

/// @nodoc
class __$$_LocationDetailsModelCopyWithImpl<$Res>
    extends _$LocationDetailsModelCopyWithImpl<$Res, _$_LocationDetailsModel>
    implements _$$_LocationDetailsModelCopyWith<$Res> {
  __$$_LocationDetailsModelCopyWithImpl(_$_LocationDetailsModel _value,
      $Res Function(_$_LocationDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? locationName = freezed,
    Object? locationDetails = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? rate = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_LocationDetailsModel(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationDetails: freezed == locationDetails
          ? _value.locationDetails
          : locationDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDetailsModel
    with DiagnosticableTreeMixin
    implements _LocationDetailsModel {
  _$_LocationDetailsModel(
      {this.imageUrl,
      this.locationName,
      this.locationDetails,
      this.description,
      this.rating,
      this.rate,
      this.isFavorite});

  factory _$_LocationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDetailsModelFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? locationName;
  @override
  final String? locationDetails;
  @override
  final String? description;
  @override
  final double? rating;
  @override
  final double? rate;
  @override
  final bool? isFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationDetailsModel(imageUrl: $imageUrl, locationName: $locationName, locationDetails: $locationDetails, description: $description, rating: $rating, rate: $rate, isFavorite: $isFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationDetailsModel'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('locationName', locationName))
      ..add(DiagnosticsProperty('locationDetails', locationDetails))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('rate', rate))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDetailsModel &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.locationDetails, locationDetails) ||
                other.locationDetails == locationDetails) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, locationName,
      locationDetails, description, rating, rate, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationDetailsModelCopyWith<_$_LocationDetailsModel> get copyWith =>
      __$$_LocationDetailsModelCopyWithImpl<_$_LocationDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDetailsModelToJson(
      this,
    );
  }
}

abstract class _LocationDetailsModel implements LocationDetailsModel {
  factory _LocationDetailsModel(
      {final String? imageUrl,
      final String? locationName,
      final String? locationDetails,
      final String? description,
      final double? rating,
      final double? rate,
      final bool? isFavorite}) = _$_LocationDetailsModel;

  factory _LocationDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_LocationDetailsModel.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get locationName;
  @override
  String? get locationDetails;
  @override
  String? get description;
  @override
  double? get rating;
  @override
  double? get rate;
  @override
  bool? get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_LocationDetailsModelCopyWith<_$_LocationDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
