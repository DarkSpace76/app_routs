// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return Employee(
    activities: (json['activities'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    langs: (json['langs'] as List<dynamic>?)
        ?.map((e) => Map<String, String>.from(e as Map))
        .toList(),
    about: json['about'] as String?,
    skills:
        (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
    education: json['education'] as String?,
    experience: json['experience'] as String?,
  );
}

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'activities': instance.activities,
      'langs': instance.langs,
      'about': instance.about,
      'skills': instance.skills,
      'education': instance.education,
      'experience': instance.experience,
    };
