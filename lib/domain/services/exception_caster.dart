import 'package:dio/dio.dart';

class ExceptionCaster {
  String cE(Exception e) {
    if (e is DioException) {
      if (e.response != null) {
        try {
          return e.response!.data["message"];
        } on Exception {
          return e.toString();
        }
      } else {
        return e.toString();
      }
    } else {
      return e.toString();
    }
  }
}
