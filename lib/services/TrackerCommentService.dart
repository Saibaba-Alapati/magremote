import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TrackerCommentService {
  Dio dio = new Dio();
  createTrackerComment(values) async {
    try {
      return await dio.post(
          'http://localhost:8000/api/trackercomment/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/${values.trackerId}/create',
          data: {
            "content": values.content,
          });
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

  updateTrackerComment(values) async {
    try {
      return await dio.put(
          'http://localhost:8000/api/trackercomment/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/${values.trackerId}/update',
          data: {
            "content": values.content,
          });
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

  deleteTrackerComment(values) async {
    try {
      return await dio.delete(
          'http://localhost:8000/api/trackercomment/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/${values.trackerId}/delete');
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
}
