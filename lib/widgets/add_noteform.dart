import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_appbar.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    GlobalKey<FormState> formstate = GlobalKey();
    String? title, subtitle;
    return Form(
      key: formstate,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            CustomAppBar(icon: Icons.check),
            SizedBox(
              height: 30.h,
            ),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              text: 'title',
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              onSaved: (value) {
                subtitle = value;
              },
              text: 'content',
              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 10.w),
            )
          ],
        ),
      ),
    );
  }
}
