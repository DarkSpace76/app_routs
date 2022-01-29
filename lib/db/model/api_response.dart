import 'package:json_annotation/json_annotation.dart';
import 'package:zwork/db/model/error.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ResponseModel {
  final ErrorModel? error;
  final Map<String, dynamic>? data;

  ResponseModel({
    this.error,
    this.data,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);

  bool get hasError => error != null;
  bool get hasData => data != null;
}
