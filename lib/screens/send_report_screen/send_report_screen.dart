import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:report_app/data/models/enum%20report%20states/report_states.dart';
import 'package:report_app/data/models/report%20model/report_model.dart';
import 'package:report_app/screens/send_report_screen/widgets/loading_button.dart';
import 'package:report_app/screens/send_report_screen/widgets/text_field.dart';
import 'package:report_app/utils/colors.dart';
import 'package:report_app/utils/constants.dart';
import 'package:report_app/view%20models/report_view_model.dart';
import 'package:report_app/widgets/global_container.dart';
import 'package:report_app/widgets/image_icon.dart';

import '../../utils/text_style.dart';

class SendReportScreen extends StatefulWidget {
  final String category;
  const SendReportScreen({Key? key, required this.category}) : super(key: key);

  @override
  State<SendReportScreen> createState() => _SendReportScreenState();
}

class _SendReportScreenState extends State<SendReportScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: ImageIconWidget(),
          ),
          SizedBox(height: 10.h),
          Center(
              child: Text(
            "Константин Володарский",
            style: fontNunitoW600(fontSize: 20.sp),
          )),
          SizedBox(height: 16.h),
          Divider(color: MyColors.c_E6E8EB, thickness: 1),
          SizedBox(height: 24.h),
          Text(
            widget.category,
            style: fontNunitoW600(fontSize: 16.sp),
          ),
          SizedBox(height: 12.h),
          Text(
            MyText.reportDescription,
            style: fontNunitoW400(fontSize: 12.sp),
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            "Комментарий (необязательно)",
            style: fontNunitoW400(
              fontSize: 12.sp,
            ).copyWith(color: MyColors.c_808C9A),
          ),
          SizedBox(height: 8.h),
          ReportTextField(
            controller: controller,
          ),
          SizedBox(height: 16.h),
          Consumer<ReportViewModel>(
            builder: (context, viewModel, child) {
              if (viewModel.states == ReportStates.pure) {
                return GlobalContainer(
                  text: "Отправить жалобу",
                  ontap: () {
                    ReportModel model = ReportModel(
                        userId: 1,
                        category: widget.category,
                        text: controller.text);
                    context.read<ReportViewModel>().sendReport(model.toJson());
                  },
                );
              }
              if (viewModel.states == ReportStates.loading) {
                return const LoadingButton();
              }
              if (viewModel.states == ReportStates.error) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(viewModel.error),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Ok"))
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
