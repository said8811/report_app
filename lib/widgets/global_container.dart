import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:report_app/utils/colors.dart';
import 'package:report_app/utils/text_style.dart';

class GlobalContainer extends StatelessWidget {
  String text;
  VoidCallback ontap;
  GlobalContainer({Key? key, required this.text, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 52.h,
        decoration: BoxDecoration(
            color: MyColors.ContainerColor,
            borderRadius: BorderRadius.circular(4.r)),
        child: Center(
            child: Text(
          text,
          style: fontNunitoW600(fontSize: 12.sp).copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
