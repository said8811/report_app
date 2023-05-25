import 'package:report_app/data/models/my%20response/my_response_model.dart';
import 'package:dio/dio.dart';

import '../../utils/constants.dart';

class ReportApiService {
  Future<MyResponse> sendReport(Map<String, dynamic> reportModel) async {
    MyResponse myResponse = MyResponse(error: "");
    Dio dio = Dio();
    try {
      await dio.post("http://89.108.103.40/complaint/profile",
          data: reportModel,
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          }));
    } catch (error) {
      myResponse.error = error.toString();
    }
    return myResponse;
  }
}
