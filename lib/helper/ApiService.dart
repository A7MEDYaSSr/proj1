import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static String _accessToken = '';
  static const String _baseUrl = 'https://zeko-app.onrender.com/api/v1';

  static void setBaseUrl(String newAccessToken) {
    _accessToken = newAccessToken;
  }

  static Map<String, dynamic> getResponse(response) {
    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode != 200) {
      print('Request failed with status: ${response.statusCode}');
    }

    return data;
  }

  static Future< Map<String, dynamic> > get(route) async {
    final response = await http.get(Uri.parse('${_baseUrl}/${route}'));   
    return getResponse(response);
  }

  static Future<Map<String, dynamic>> post(route, data) async {
    final response = await http.post(
      Uri.parse('${_baseUrl}/${route}'),
      body: data, // {'key1': 'value1', 'key2': 'value2'},
    );

    return getResponse(response);
  }

  static Future<Map<String, dynamic>> put(route, data) async {
    final response = await http.post(
      Uri.parse('${_baseUrl}/${route}'),
      body: data,
    );

    return getResponse(response);
  }
}
