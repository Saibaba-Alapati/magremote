import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CategoryContainerService {
  Dio dio = new Dio();
  createCategoryContainer(values) async {
    try {
      return await dio.post(
          'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/create',
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

  deleteCCwithTrackers(values) async {
    try {
      return await dio.post(
          'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/deleteccwithtrackers',
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

  deleteAllTrackersFromCC(values) async {
    try {
      return await dio.delete(
          'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/deletealltrackersfromcc',
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

  updateCategoryContainer(values) async {
    try {
      return await dio.put(
          'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.id}/update',
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

  deleteCategoryContainer(values) async {
    try {
      return await dio.delete(
          'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/delete');
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

  findAllTrackersofCC(values) async {
    try {
      return await dio.get(
          'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.id}/getalltrackers');
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

  moveTrackerofCC(values) async {
    try {
      return await dio.put(
          'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/${values.id}/movetrackerofcc');
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

  // getCategoryContainer(values) async {
  //   try {
  //     return await dio.get(
  //         'http://localhost:8000/api/categorycontainer/${values.userId}/${values.projectId}/${values.trackercontainerId}/get');
  //   } on DioError catch (e) {
  //     Fluttertoast.showToast(
  //         msg: e.response!.data['msg'],
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.BOTTOM,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //   }
  // }
}
