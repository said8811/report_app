import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      decoration: BoxDecoration(
          color: MyColors.C_E6E8EB, borderRadius: BorderRadius.circular(4.r)),
      child: Center(
          child: CircularProgressIndicator(
        color: MyColors.C_808C9A,
      )),
    );
  }
}
