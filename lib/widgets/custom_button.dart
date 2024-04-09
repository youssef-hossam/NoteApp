import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
    this.onTap,
    this.isloading = false,
  });
  final Function()? onTap;
  final String? text;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Kprimarycolor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: isloading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  text!,
                  style: TextStyle(color: Colors.black, fontSize: 20.sp),
                ),
        ),
      ),
    );
  }
}
