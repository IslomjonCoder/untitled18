import 'dart:io';

import 'package:dio/dio.dart';
import 'package:untitled18/models/user_model.dart';

class ApiProvider {
  final Dio _dio = Dio();

  getUser() async {
    String url = 'https://randomuser.me/api/';
    try {
      final response = await _dio.get(url);
      if (response.statusCode == HttpStatus.ok) {
        return User.fromJson(response.data['results'][0]);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
