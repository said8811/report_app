import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:report_app/utils/colors.dart';
import 'package:report_app/utils/text_style.dart';

class ReportTextField extends StatelessWidget {
  TextEditingController controller;
   ReportTextField({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      maxLines: 4,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4).r, borderSide: BorderSide(color: MyColors.C_E6E8EB)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4).r, borderSide: BorderSide(color: MyColors.C_E6E8EB)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4).r, borderSide: BorderSide(color: MyColors.C_E6E8EB)),
          fillColor: MyColors.C_F2F4F5,
          filled: true,
          hintText: "Опишите причину жалобы",
          hintStyle: fontNunitoW400(fontSize: 12.sp).copyWith(color: MyColors.C_808C9A)
      ),
    );
  }
}
