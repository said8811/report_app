import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:report_app/screens/choose_category_screen/choose_report_screen.dart';
import 'package:report_app/screens/report_succes_screen/report_succes_screen.dart';
import 'package:report_app/screens/send_report_screen/send_report_screen.dart';
import 'package:provider/provider.dart';
import '../../data/models/enum report pages/report_pages.dart';
import '../../view models/report_view_model.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 36.r, horizontal: 16.r),
          width: double.infinity,
          child: Consumer<ReportViewModel>(
            builder: (context, reportViewModel, child) {
              if (reportViewModel.page == ReportPages.chooseCategory) {
                return const ChooseReportScreen();
              }
              if (reportViewModel.page == ReportPages.sendReport) {
                return SendReportScreen(
                  category: reportViewModel.categoryName,
                );
              }
              if (reportViewModel.page == ReportPages.reportInSucces) {
                return const ReportSuccesScreen();
              }
              return const SizedBox();
            },
          )),
    );
  }
}
