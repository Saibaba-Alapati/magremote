import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TrackerContainerService {
  Dio dio = new Dio();
  createTrackerContainer(values) async {
    try {
      return await dio.post(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/create',
          data: {values});
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

  joinTrackerContainer(values) async {
    try {
      return await dio.post(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/join',
          data: {values});
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

  deleteTrackerContainerandContent(values) async {
    try {
      return await dio.delete(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/deletetcandcontents',
          data: {values});
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

  updateTrackerContainer(values) async {
    try {
      return await dio.put(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/${values.id}/update',
          data: {values});
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

  deleteTrackerContainer(values) async {
    try {
      return await dio.delete(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/delete');
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

  findAllCCofTC(values) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/${values.id}/getallcc');
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

  userAccessCheck(values) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/checkaccess');
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

  findOneTrackerContainer(values) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/get');
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

  findAllContainersRelatedToUser(values) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/trackercontainer/${values.userId}/${values.projectId}/getalltcofuser');
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
