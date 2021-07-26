import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = new Dio();

  login(username, password) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/user/login?username=$username&password=$password',
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response!.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  addUser(values) async {
    return await dio.post('http://localhost:8000/api/user/signup/',
        data: {values},
        options: Options(contentType: Headers.formUrlEncodedContentType));
  }
}
