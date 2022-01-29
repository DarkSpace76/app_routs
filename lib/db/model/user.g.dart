// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['name'] as String?,
    email: json['email'] as String?,
    emailVerified: json['email_verified'] as bool?,
    phoneNumber: json['phone_number'] as String?,
    photoUrl: json['photo_url'] as String?,
    uid: json['uid'] as String?,
    city: User.cityFromJson(json['city'] as Map<String, dynamic>?),
    dateOfBirth: json['date_of_birth'] as String?,
    userType: json['user_type'] as int?,
    isActive: json['is_active'] as bool?,
    typeEmployment: (json['type_employment'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    employee: User.employeeFromJson(json['employee'] as Map<String, dynamic>?),
    company: User.companyFromJson(json['company'] as Map<String, dynamic>?),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'email_verified': instance.emailVerified,
      'phone_number': instance.phoneNumber,
      'photo_url': instance.photoUrl,
      'uid': instance.uid,
      'date_of_birth': instance.dateOfBirth,
      'user_type': instance.userType,
      'city': User.cityToJson(instance.city),
      'is_active': instance.isActive,
      'type_employment': instance.typeEmployment,
      'company': User.companyToJson(instance.company),
      'employee': User.employeeToJson(instance.employee),
    };
