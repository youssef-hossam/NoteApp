import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/widgets/custom_button.dart';
import 'package:noteapp/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 30.h),
        child: Column(
          children: [
            const CustomTextField(text: 'title'),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              text: 'content',
              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 10.w),
            ),
            SizedBox(
              height: 90.h,
            ),
            CustomButton(text: 'Add')
          ],
        ),
      ),
    );
  }
}
