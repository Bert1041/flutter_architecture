import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm_provider_architecture/services/api_status.dart';

import '../models/user_models.dart';
import '../utils/constants/url.dart';

class UserServices {
  static Future<Object> getUsers() async {
    try {
      var url = Uri.parse(userList);
      var response = await http.get(url);
      if (200 == response.statusCode) {
        return Success(code: 200, response: userListFromJson(response.body));
      }
      return Failure(code: 100, errorResponse: 'Invalid Response');
    } on HttpException {
      return Failure(code: 100, errorResponse: 'No Internet');
    } on FormatException {
      return Failure(code: 100, errorResponse: 'Invalid Format');
    } catch (e) {
      return Failure(code: 100, errorResponse: 'Unknown Error');
    }
  }
}
