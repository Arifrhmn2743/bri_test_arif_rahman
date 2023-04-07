import 'package:bri_test_arif_rahman/helpers/api.dart';
import 'package:dio/dio.dart';

class ApiHandler {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(baseUrl: Api.apiLink));
  }
}
