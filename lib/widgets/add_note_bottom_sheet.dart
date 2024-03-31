import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/widgets/custom_button.dart';

import '../constant.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 30.h),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(color: Kprimarycolor),
                enabledBorder: buildBorder(),
                border: buildBorder(),
                focusedBorder: buildBorder(
                  Color(0xff62FCD7),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormField(
                cursorColor: Kprimarycolor,
                decoration: InputDecoration(
                    hintText: 'content',
                    hintStyle: TextStyle(color: Kprimarycolor),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 50.h, horizontal: 10.w),
                    border: buildBorder(),
                    enabledBorder: buildBorder(),
                    focusedBorder: buildBorder(Kprimarycolor))),
            SizedBox(
              height: 90.h,
            ),
            CustomButton(text: 'Add')
          ],
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
