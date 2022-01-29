import 'dart:io';

import 'package:dio/dio.dart' as d;
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/instance_manager.dart';
import 'package:zwork/db/model/api_response.dart';
import 'package:zwork/db/model/error.dart';
import 'package:zwork/resource/storage.dart';

enum DioType { get, post }

class RestApi {
  RestApi() {
    dio.options
      ..baseUrl = RestApi.BASE_URL
      ..validateStatus = (int? status) {
        return status != null && status > 0;
      };
  }

  var dio = d.Dio();
  static const String BASE_URL =
      "https://us-central1-zwork-364bd.cloudfunctions.net/publicApi";

  ResponseModel parseResponse(d.Response resp) {
    ResponseModel response;
    try {
      // print('parse resp ${resp.data}');
      response = ResponseModel.fromJson(resp.data);
    } catch (e) {
      print(e);
      response =
          ResponseModel(error: ErrorModel(code: -1, message: 'Bad request'));
    }
    return response;
  }

  Future<ResponseModel> call(Function next, {bool checkUserNull = true}) async {
    /* var user = FirebaseAuth.instance.currentUser;
    if (checkUserNull && user == null) {
      authorization.logout();
      return ResponseModel(error: ErrorModel(code: 401, message: 'Need auth'));
    }
    final token = (await user?.getIdTokenResult())?.token;

    dio.options.headers
        .addAll({HttpHeaders.authorizationHeader: 'Bearer $token'}); */
    return parseResponse(await next());
  }

  Future<ResponseModel> infoByPlaceId(String value) async {
    return call(() => dio.get('/infoByPlaceId',
        queryParameters: {'placeId': value, 'lang': localeApp}));
  }

  Future<ResponseModel> placeAutocomplete(Map<String, dynamic> value) async {
    return call(() => dio.get('/placeAutocomplete', queryParameters: value));
  }

  /*  Future<ResponseModel> placeAutocomplete(Map<String, dynamic> data) async {
    return ResponseModel(data: null, error: null);
  }
 */
  // Обновление пуш токена в БД
  Future<ResponseModel> updatePushToken(Map<String, dynamic> _map) async {
    return await call(() => dio.put('/pushToken', data: _map));
  }
}
