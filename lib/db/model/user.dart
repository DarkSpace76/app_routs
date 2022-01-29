import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:zwork/db/model/city.dart';
import 'package:zwork/db/model/company.dart';
import 'package:zwork/db/model/employee.dart';
import 'package:zwork/resource/storage.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? name;

  String? email;

  @JsonKey(name: 'email_verified')
  bool? emailVerified;

  @JsonKey(name: 'phone_number')
  String? phoneNumber;

  @JsonKey(name: 'photo_url')
  String? photoUrl;

  String? uid;

  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;

  @JsonKey(name: 'user_type')
  int? userType;

  @JsonKey(fromJson: cityFromJson, toJson: cityToJson)
  City? city;

  @JsonKey(name: 'is_active')
  bool? isActive;

  @JsonKey(name: 'type_employment')
  List<int>? typeEmployment;

  @JsonKey(fromJson: companyFromJson, toJson: companyToJson)
  Company? company;

  @JsonKey(fromJson: employeeFromJson, toJson: employeeToJson)
  Employee? employee;

  User(
      {this.name,
      this.email,
      this.emailVerified,
      this.phoneNumber,
      this.photoUrl,
      this.uid,
      this.city,
      this.dateOfBirth,
      this.userType,
      this.isActive,
      this.typeEmployment,
      this.employee,
      this.company});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  //******** City ************* */

  static Map<String, dynamic>? cityToJson(City? city) {
    return city?.toJson();
  }

  static City? cityFromJson(Map<String, dynamic>? value) {
    return value != null ? City.fromJson(value) : null;
  }

//********** Company *********** */
  static Company? companyFromJson(Map<String, dynamic>? value) {
    return value != null ? Company.fromJson(value) : null;
  }

  static Map<String, dynamic>? companyToJson(Company? company) {
    return company?.toJson();
  }

//********* Employee ************ */
  static Employee? employeeFromJson(Map<String, dynamic>? value) {
    return value != null ? Employee.fromJson(value) : null;
  }

  static Map<String, dynamic>? employeeToJson(Employee? employee) {
    return employee?.toJson();
  }
}
