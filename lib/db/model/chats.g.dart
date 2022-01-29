// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chats _$ChatsFromJson(Map<String, dynamic> json) {
  return Chats(
    date: Chats._dateTimeFormJson(json['date'] as Timestamp?),
    userId: json['user_id'] as String?,
    vacancyId: json['vac_id'] as String?,
    idVacancyName: json['id_vacan_name'] as int?,
    companyId: json['company_id'] as String?,
    companyResponded: json['company_responded'] as bool?,
  );
}

Map<String, dynamic> _$ChatsToJson(Chats instance) => <String, dynamic>{
      'date': Chats._dateTimeToJson(instance.date),
      'id_vacan_name': instance.idVacancyName,
      'user_id': instance.userId,
      'vac_id': instance.vacancyId,
      'company_id': instance.companyId,
      'company_responded': instance.companyResponded,
    };
