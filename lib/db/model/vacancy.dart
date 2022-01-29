import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:zwork/db/model/address.dart';
import 'package:zwork/db/model/city.dart';

part 'vacancy.g.dart';

@JsonSerializable()
class Vacancy {
  @JsonKey(name: 'company_name')
  String? companyName;

  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'id_vacancy_name')
  int? idVacancyName;
  @JsonKey(fromJson: cityFromJson, toJson: cityToJson)
  City? city;
  @JsonKey(name: 'time_work')
  int? timerWork;
  int? payment;
  @JsonKey(name: 'job_benefits')
  List<String>? jobBenefits;
  String? about;
  @JsonKey(name: 'id_company')
  String? idCompany;
  int? status;
  String? rejection;
  @JsonKey(name: 'number_response')
  int? numberResponse;
  @JsonKey(fromJson: addressFromJson, toJson: addressToJson)
  AddressModel? adress;

  Vacancy({
    this.companyName,
    this.adress,
    this.phoneNumber,
    this.idVacancyName,
    this.city,
    this.timerWork,
    this.payment,
    this.jobBenefits,
    this.about,
    this.idCompany,
    this.status,
    this.rejection,
    this.numberResponse = 0,
  });

  factory Vacancy.fromJson(Map<String, dynamic> json) =>
      _$VacancyFromJson(json);

  Map<String, dynamic> toJson() => _$VacancyToJson(this);

  //******** Adress ************* */
  static Map<String, dynamic>? addressToJson(AddressModel? address) {
    return address?.toJson();
  }

  static AddressModel? addressFromJson(Map<String, dynamic>? value) {
    return value != null ? AddressModel.fromJson(value) : null;
  }

  //******** City ************* */
  static Map<String, dynamic>? cityToJson(City? city) {
    return city?.toJson();
  }

  static City? cityFromJson(Map<String, dynamic>? value) {
    return value != null ? City.fromJson(value) : null;
  }
}
