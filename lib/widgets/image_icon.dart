import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:report_app/utils/colors.dart';

import '../utils/text_style.dart';

class ImageIconWidget extends StatelessWidget {
  const ImageIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.w,
      height: 64.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: MyColors.c_E6E8EB),
      child: Center(
        child: Text("К", style: fontNunitoW600(fontSize: 32.sp)),
      ),
    );
  }
}
