import 'package:flutter/material.dart';
import 'package:report_app/data/models/enum%20report%20pages/report_pages.dart';
import 'package:report_app/data/models/enum%20report%20states/report_states.dart';
import 'package:report_app/data/models/my%20response/my_response_model.dart';
import 'package:report_app/data/repository/report_repository.dart';

class ReportViewModel extends ChangeNotifier {
  String error = '';
  String categoryName = "";
  ReportPages page = ReportPages.chooseCategory;
  ReportStates states = ReportStates.pure;
  ReportRepository repository;
  ReportViewModel({required this.repository});
  sendReport(Map<String, dynamic> reportModel) async {
    states = ReportStates.loading;
    notifyListeners();
    MyResponse response = await repository.sendReport(reportModel);
    notifyListeners();
    if (response.error.isEmpty) {
      states = ReportStates.succes;
      page = ReportPages.reportInSucces;
      notifyListeners();
    } else {
      error = response.error;
      states = ReportStates.error;
      notifyListeners();
    }
    notifyListeners();
  }

  closeAll() {
    states = ReportStates.pure;
    page = ReportPages.chooseCategory;
    notifyListeners();
  }

  changeState(ReportPages states, String category) {
    page = states;
    categoryName = category;
    notifyListeners();
  }
}
