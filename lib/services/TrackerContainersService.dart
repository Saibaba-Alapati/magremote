import 'package:dio/dio.dart';

class TrackerContainersService {
  Dio dio = new Dio();
  getAllTrackercontainer() async {
    try {
      var response = dio.get('http://localhost:8000/api/:userid/:projectid');
      return response;
    } catch (e) {
      print(e);
    }
  }
}
