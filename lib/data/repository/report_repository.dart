import 'package:report_app/data/api%20service/api_service.dart';
import 'package:report_app/data/models/my%20response/my_response_model.dart';

class ReportRepository {
  ReportApiService apiService;
  ReportRepository({required this.apiService});

  Future<MyResponse> sendReport(Map<String, dynamic> reportModel)=>apiService.sendReport(reportModel);
}