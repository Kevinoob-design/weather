import 'package:http/http.dart';
import 'dart:convert';

class Http {
  static Future<dynamic> getRequest(String url, Map<String, String> headers) {
    return get(url, headers: headers).then((Response response) => jsonDecode(response.body));
  }

  static Future<dynamic> postRequest(String url, Map<String, String> headers, dynamic body) {
    return post(url, headers: headers, body: body).then((Response response) => jsonDecode(response.body));
  }
}
