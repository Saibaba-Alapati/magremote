import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TrackerService {
  Dio dio = new Dio();
  createTracker(values) async {
    try {
      return await dio.post(
          'http://localhost:8000/api/tracker/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/create',
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

  updateTracker(values) async {
    try {
      return await dio.put(
          'http://localhost:8000/api/tracker/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/${values.id}/update',
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

  deleteTracker(values) async {
    try {
      return await dio.delete(
          'http://localhost:8000/api/tracker/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/delete');
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

  getAllTrackerComments(values) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/tracker/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/${values.id}/getall');
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

  getTracker(values) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/tracker/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.categorycontainerId}/get');
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
