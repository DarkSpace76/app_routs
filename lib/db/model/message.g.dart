// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    date: Message._dateTimeFormJson(json['date'] as Timestamp?),
    userId: json['user_id'] as String?,
    text: json['text'] as String?,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'date': Message._dateTimeToJson(instance.date),
      'text': instance.text,
      'user_id': instance.userId,
    };
