import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:noteapp/widgets/custom_appbar.dart';
import 'package:noteapp/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          const CustomAppBar(icon: Icons.check),
          SizedBox(
            height: 30.h,
          ),
          const CustomTextField(text: 'title'),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            text: 'content',
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 10.w),
          )
        ],
      ),
    );
  }
}
