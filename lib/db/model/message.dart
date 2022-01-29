import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  @JsonKey(fromJson: _dateTimeFormJson, toJson: _dateTimeToJson)
  DateTime? date;

  String? text;

  @JsonKey(name: 'user_id')
  String? userId;

  Message({
    this.date,
    this.userId,
    this.text,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  static DateTime? _dateTimeFormJson(Timestamp? value) {
    return value?.toDate();
  }

  static Timestamp? _dateTimeToJson(DateTime? value) {
    return value != null ? Timestamp?.fromDate(value) : null;
  }
}
