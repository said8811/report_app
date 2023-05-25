import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      decoration: BoxDecoration(
          color: MyColors.c_E6E8EB, borderRadius: BorderRadius.circular(4.r)),
      child: Center(
          child: CircularProgressIndicator(
        color: MyColors.c_808C9A,
      )),
    );
  }
}
