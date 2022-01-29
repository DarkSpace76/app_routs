// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictionModel _$PredictionModelFromJson(Map<String, dynamic> json) {
  return PredictionModel(
    description: json['description'] as String?,
    place_id: json['place_id'] as String?,
  );
}

Map<String, dynamic> _$PredictionModelToJson(PredictionModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'place_id': instance.place_id,
    };
