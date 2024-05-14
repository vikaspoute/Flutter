import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelper {
  static const String _baseUrl = "http://";

  // helper method for get request
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  // helper method for post request
  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic body) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(body),
    );
    return _handleResponse(response);
  }

  // helper method for put request
  static Future<Map<String, dynamic>> put(String endPoint, dynamic body) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(body),
    );
    return _handleResponse(response);
  }

  // helper method for delete request
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
