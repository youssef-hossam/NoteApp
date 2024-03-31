import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.text,
  });

  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Kprimarycolor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 20.sp),
        ),
      ),
    );
  }
}
