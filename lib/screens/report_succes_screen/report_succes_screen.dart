import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:report_app/utils/colors.dart';
import 'package:report_app/utils/text_style.dart';
import 'package:report_app/view%20models/report_view_model.dart';
import 'package:report_app/widgets/global_container.dart';
import 'package:report_app/widgets/image_icon.dart';

class ReportSuccesScreen extends StatelessWidget {
  const ReportSuccesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Divider(color: MyColors.C_E6E8EB, thickness: 1),
        SizedBox(height: 160.h),
        SvgPicture.asset("assets/svg/succes_icon.svg"),
        SizedBox(height: 20.h),
        Text(
          "Спасибо!",
          style: fontNunitoW600(fontSize: 16.sp),
        ),
        SizedBox(height: 12.h),
        Text(
          "Модераторы скоро рассмотрят вашу жалобу.",
          style: fontNunitoW400(fontSize: 12.sp),
        ),
        SizedBox(height: 24.h),
        GlobalContainer(
          text: "Закрыть",
          ontap: () {
            context.read<ReportViewModel>().closeAll();
          },
        )
      ],
    );
  }
}
