import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:report_app/utils/colors.dart';
import 'package:report_app/utils/text_style.dart';
import 'package:report_app/view%20models/report_view_model.dart';
import 'package:report_app/widgets/image_icon.dart';

import '../../data/models/enum report pages/report_pages.dart';
import '../../utils/constants.dart';
class ChooseReportScreen extends StatelessWidget {
   ChooseReportScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageIconWidget(),
        SizedBox(height: 10.h),
        Text("Константин Володарский",style: fontNunitoW600(fontSize: 20.sp),),
        SizedBox(height: 16.h),
        Divider(
          color: MyColors.C_E6E8EB,
          thickness: 1,
        ),
        SizedBox(height: 24.h),
        Text("Что на странице Контантина кажется вам недопустимым?",style: fontNunitoW600(fontSize: 16.sp),),
        SizedBox(height: 12.h),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 14.h,),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: reports.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  context.read<ReportViewModel>().changeState(ReportPages.Send_report,reports[index]);
                },
                child: Text(reports[index],style: fontNunitoW400(fontSize: 14.sp),));
          },)
      ],
    );
  }
}
