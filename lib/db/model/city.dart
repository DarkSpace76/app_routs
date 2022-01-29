import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mapbox_search/mapbox_search.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  String? id;

  String? name;

  double? lat;

  double? lon;

  City(this.id, this.name, this.lat, this.lon);

  static City? getCity(MapBoxPlace? value) {
    if (value == null) return null;
    var lat = value.geometry?.coordinates?[0];
    var lon = value.geometry?.coordinates?[1];
    return City(value.id, value.text, lat, lon);
  }

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}
