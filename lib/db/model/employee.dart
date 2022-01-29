import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:zwork/db/model/city.dart';

part 'employee.g.dart';

@JsonSerializable()
class Employee extends HiveObject {
  List<String>? activities;

  List<Map<String, String>>? langs;

  String? about;

  List<String>? skills;

  String? education;

  String? experience;

  Employee({
    this.activities,
    this.langs,
    this.about,
    this.skills,
    this.education,
    this.experience,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  static Map<String, dynamic>? cityToJson(City? city) {
    return city?.toJson();
  }
}
