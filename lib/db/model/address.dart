import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class AddressModel {
  String? full_address;
  String? street_address;
  String? street_number;
  String? country;
  String? route;
  String? city;
  String? state;
  String? zip;
  String? unit_number;
  @JsonKey(toJson: _toJsonGeoPoint, fromJson: _fromJsonGeoPoint)
  GeoFirePoint? location;

  AddressModel(
      {this.full_address,
      this.street_address,
      this.street_number,
      this.country,
      this.route,
      this.city,
      this.state,
      this.zip,
      this.unit_number,
      this.location});

  static GeoFirePoint? _fromJsonGeoPoint(Map<String, dynamic>? json) {
    GeoPoint? point = json?['geopoint'];
    return point != null ? GeoFirePoint(point.latitude, point.longitude) : null;
  }

  static dynamic _toJsonGeoPoint(GeoFirePoint? geoPoint) {
    return geoPoint?.data;
  }

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  static Map<String, dynamic>? modelToJson(val) =>
      val == null ? null : val.toJson();
}
