import 'dart:convert';

import 'package:mapbox_search/mapbox_search.dart';
import 'package:http/http.dart' as http;

class MyPlaceType {
  static const String places = 'place';
  static const String country = 'country';
  static const String address = 'address';
  static const String region = 'region';
  static const String postcode = 'postcode';
  static const String district = 'district';
  static const String locality = 'locality';
  static const String neighborhood = 'neighborhood';
  static const String poi = 'poi';
}

class PlaceSearch {
  final String apiKey;

  final String? language;

  final String? country;

  final int? limit;

  final String? types;

  PlaceSearch(
      {required this.apiKey,
      this.language,
      this.country,
      this.limit,
      this.types});

  final String _url = 'https://api.mapbox.com/geocoding/v5/mapbox.places/';

  String _createUrl(String queryText) {
    String finalUrl = '$_url${Uri.encodeFull(queryText)}.json?';
    finalUrl += 'access_token=$apiKey';

    /*  if (location != null) {
      finalUrl += '&proximity=${location.lng}%2C${location.lat}';
    } */

    if (country != null) {
      finalUrl += "&country=$country";
    }

    if (limit != null) {
      finalUrl += "&limit=$limit";
    }

    if (language != null) {
      finalUrl += "&language=$language";
    }

    if (types != null) {
      finalUrl += "&types=$types";
    }

    return finalUrl;
  }

  Future<List<MapBoxPlace>?> getPlaces(String queryText) async {
    String url = _createUrl(queryText);
    final response = await http.get(Uri.parse(url));

    if (response.body.contains('message')) {
      throw Exception(json.decode(response.body)['message']);
    }

    return Predictions.fromRawJson(response.body).features;
  }
}
