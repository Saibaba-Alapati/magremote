// import 'dart:convert';

import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

class ProjectService {
  Dio dio = new Dio();
  createProject(user_id, values) async {
    final reponse = await dio.post(
        'http://localhost:8000/api/tracker/$user_id/create',
        data: {values});
  }
}
