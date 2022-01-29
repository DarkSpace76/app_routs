import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:get/get.dart';
import 'package:zwork/api/api.dart';
import 'package:zwork/db/model/address.dart';
import 'package:zwork/db/model/prediction.dart';

class AddressSearchController extends GetxController {
  /// Поиск адреса по строке
  Future<List<PredictionModel>> searchByText(String? val,
      {double? lat, double? lon}) async {
    List<PredictionModel> predictions = [];
    if (val == null || val.isEmpty) return predictions;
    return await RestApi().placeAutocomplete(
        {"input": val, "lat": lat, "lng": lon, "lang": "ru"}).then((res) {
      if (res.hasError) {
        printError(info: res.error!.message!);
        return predictions;
      }
      (res.data!['predictions'] as List).forEach((element) {
        predictions.add(PredictionModel.fromJson(element));
      });
      print('Нашли адресов: ${predictions.length}');
      return predictions;
    });
  }

  /// Детальная инфа по ид места
  Future<AddressModel?> getInfoByPlace(String id) async {
    var res = await RestApi().infoByPlaceId(id);
    if (res.hasError) {
      printError(info: res.error!.message!);
      return null;
    }
    return parseAdressFromGoogleResult(res.data);
  }

  AddressModel parseAdressFromGoogleResult(Map<String, dynamic>? res) {
    AddressModel address = AddressModel();
    if (res?['result'] == null) return address;
    (res!['result']['address_components'] as List).forEach((element) {
      switch (element['types'].first) {
        case 'street_number':
          address.street_number = element['short_name'];
          break;
        case 'country':
          address.country = element['short_name'];
          break;
        case 'route':
          address.route = element['short_name'];
          break;
        case 'locality':
          address.city = element['long_name'];
          break;
        case 'administrative_area_level_1':
          address.state = element['short_name'];
          break;
        // case 'administrative_area_level_2':
        //   address.area2 = element['short_name'];
        //   break;
        case 'postal_code':
          address.zip = element['short_name'];
          break;
        default:
      }
    });

    address.street_address =
        (address.street_number ?? '') + ' ' + (address.route ?? '');
    address.full_address = res['result']['formatted_address'];
    address.location = GeoFirePoint(
        res['result']['geometry']['location']['lat'],
        res['result']['geometry']['location']['lng']);

    return address;
  }
}
