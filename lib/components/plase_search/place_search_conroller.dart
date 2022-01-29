import 'package:mapbox_search/mapbox_search.dart';
import 'package:zwork/components/plase_search/place_search_model.dart';
import 'package:zwork/resource/const.dart';

class PlaceSearchController {
  PlaceSearch _getPlaceService() {
    return PlaceSearch(
        apiKey: apiKey, limit: 5, types: MyPlaceType.places, language: 'ru');
  }

  Future<List<MapBoxPlace>?> searchCity(String queryText) async {
    var placeService = _getPlaceService();
    List<MapBoxPlace>? resultSearch = [];
    if (queryText.isEmpty) return resultSearch;

    return await placeService.getPlaces(queryText);
  }
}
