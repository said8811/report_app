import 'package:flutter/material.dart';
import 'package:report_app/data/models/enum%20report%20pages/report_pages.dart';
import 'package:report_app/data/models/enum%20report%20states/report_states.dart';
import 'package:report_app/data/models/my%20response/my_response_model.dart';
import 'package:report_app/data/repository/report_repository.dart';

class ReportViewModel extends ChangeNotifier {
  String error = '';
  String categoryName = "";
  ReportPages page = ReportPages.Choose_category;
  ReportStates states = ReportStates.Pure;
  ReportRepository repository;
  ReportViewModel({required this.repository});
  sendReport(Map<String, dynamic> reportModel) async {
    states = ReportStates.Loading;
    notifyListeners();
    MyResponse response = await repository.sendReport(reportModel);
    notifyListeners();
    if (response.error.isEmpty) {
      states = ReportStates.Succes;
      page = ReportPages.Report_In_Succes;
      notifyListeners();
    } else {
      error = response.error;
      print(response.error);
      states = ReportStates.Error;
      notifyListeners();
    }
    notifyListeners();
  }

  closeAll() {
    states = ReportStates.Pure;
    page = ReportPages.Choose_category;
    notifyListeners();
  }

  changeState(ReportPages states, String category) {
    page = states;
    categoryName = category;
    notifyListeners();
  }
}
