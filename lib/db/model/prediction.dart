import 'package:json_annotation/json_annotation.dart';

part 'prediction.g.dart';

@JsonSerializable()
class PredictionModel {
  String? description;
  String? place_id;

  PredictionModel({
    this.description,
    this.place_id,
  });

  factory PredictionModel.fromJson(Map<String, dynamic> json) =>
      _$PredictionModelFromJson(json);
  Map<String, dynamic> toJson() => _$PredictionModelToJson(this);
}
