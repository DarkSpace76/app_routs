// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return AddressModel(
    full_address: json['full_address'] as String?,
    street_address: json['street_address'] as String?,
    street_number: json['street_number'] as String?,
    country: json['country'] as String?,
    route: json['route'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    zip: json['zip'] as String?,
    unit_number: json['unit_number'] as String?,
    location: AddressModel._fromJsonGeoPoint(
        json['location'] as Map<String, dynamic>?),
  );
}

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'full_address': instance.full_address,
      'street_address': instance.street_address,
      'street_number': instance.street_number,
      'country': instance.country,
      'route': instance.route,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'unit_number': instance.unit_number,
      'location': AddressModel._toJsonGeoPoint(instance.location),
    };
