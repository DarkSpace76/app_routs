import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:zwork/db/model/city.dart';

part 'company.g.dart';

@JsonSerializable()
class Company extends HiveObject {
  String? adress;

  String? about;

  Company({
    this.adress,
    this.about,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  static Map<String, dynamic>? cityToJson(City? city) {
    return city?.toJson();
  }
}
