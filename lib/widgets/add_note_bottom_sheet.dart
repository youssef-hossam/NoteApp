import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/widgets/custom_button.dart';
import 'package:noteapp/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  GlobalKey<FormState> formstate = GlobalKey();
  String? title, subtitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 30.h),
        child: Form(
          key: formstate,
          child: Column(
            children: [
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                text: 'title',
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                text: 'content',
                padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 10.w),
                onSaved: (value) {
                  subtitle = value;
                },
              ),
              SizedBox(
                height: 90.h,
              ),
              CustomButton(
                text: 'Add',
                onTap: () {
                  if (formstate.currentState!.validate()) {
                    formstate.currentState!.save();
                    setState(() {});
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
