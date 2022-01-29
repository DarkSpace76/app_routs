// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return ErrorModel(
    code: json['code'] as int?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
