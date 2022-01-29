import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class ErrorModel {
  final int? code;
  final String? message;

  ErrorModel({
    this.code,
    this.message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
