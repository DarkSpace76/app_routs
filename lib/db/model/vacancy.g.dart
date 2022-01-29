// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vacancy _$VacancyFromJson(Map<String, dynamic> json) {
  return Vacancy(
    companyName: json['company_name'] as String?,
    adress: Vacancy.addressFromJson(json['adress'] as Map<String, dynamic>?),
    phoneNumber: json['phone_number'] as String?,
    idVacancyName: json['id_vacancy_name'] as int?,
    city: Vacancy.cityFromJson(json['city'] as Map<String, dynamic>?),
    timerWork: json['time_work'] as int?,
    payment: json['payment'] as int?,
    jobBenefits: (json['job_benefits'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    about: json['about'] as String?,
    idCompany: json['id_company'] as String?,
    status: json['status'] as int?,
    rejection: json['rejection'] as String?,
    numberResponse: json['number_response'] as int?,
  );
}

Map<String, dynamic> _$VacancyToJson(Vacancy instance) => <String, dynamic>{
      'company_name': instance.companyName,
      'phone_number': instance.phoneNumber,
      'id_vacancy_name': instance.idVacancyName,
      'city': Vacancy.cityToJson(instance.city),
      'time_work': instance.timerWork,
      'payment': instance.payment,
      'job_benefits': instance.jobBenefits,
      'about': instance.about,
      'id_company': instance.idCompany,
      'status': instance.status,
      'rejection': instance.rejection,
      'number_response': instance.numberResponse,
      'adress': Vacancy.addressToJson(instance.adress),
    };
