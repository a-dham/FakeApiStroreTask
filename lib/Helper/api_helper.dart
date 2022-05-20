import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> helperget(String url) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print(response.statusCode);
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'THere an Error with number of status cod ${response.statusCode}');
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'headers': 'Bearer $token'});
    }
    http.Response response = await http.post(
      Uri.parse(
        url,
      ),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      print(response.body);
      return data;
    } else {
      throw Exception(
          'There a problem with status come ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> update({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'headers': 'Bearer $token'});
    }
    http.Response response = await http.post(
      Uri.parse(
        url,
      ),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      print(response.body);
      return data;
    } else {
      throw Exception(
          'There a problem with status come ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}
