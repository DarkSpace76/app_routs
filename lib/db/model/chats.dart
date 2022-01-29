import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chats.g.dart';

@JsonSerializable()
class Chats {
  @JsonKey(ignore: true)
  String? companyName;

  @JsonKey(ignore: true)
  String? profileImage;

  @JsonKey(fromJson: _dateTimeFormJson, toJson: _dateTimeToJson)
  DateTime? date;

  @JsonKey(name: 'id_vacan_name')
  int? idVacancyName;

  @JsonKey(ignore: true)
  String? vacancyName;

  @JsonKey(name: 'user_id')
  String? userId;

  @JsonKey(name: 'vac_id')
  String? vacancyId;

  @JsonKey(name: 'company_id')
  String? companyId;

  @JsonKey(name: 'company_responded')
  bool? companyResponded;

  Chats(
      {this.companyName,
      this.profileImage,
      this.date,
      this.userId,
      this.vacancyId,
      this.idVacancyName,
      this.vacancyName,
      this.companyId,
      this.companyResponded});

  factory Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);

  Map<String, dynamic> toJson() => _$ChatsToJson(this);

  static DateTime? _dateTimeFormJson(Timestamp? value) {
    return value?.toDate();
  }

  static Timestamp? _dateTimeToJson(DateTime? value) {
    return value != null ? Timestamp?.fromDate(value) : null;
  }
}
