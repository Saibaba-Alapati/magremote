import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = new Dio();

  login(username, password) async {
    try {
      return await dio.post('https://magremote.herokuapp.com/authenticate',
          data: {
            "username": username,
            "password": password,
          },
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

  addUser(firstname, lastname, username, gender, password, email) async {
    return await dio.post('https://magremote.herokuapp.com/adduser',
        data: {
          "firstname": firstname,
          "lastname": lastname,
          "username": username,
          "gender": gender,
          "password": password,
          "email": email,
        },
        options: Options(contentType: Headers.formUrlEncodedContentType));
  }
}
