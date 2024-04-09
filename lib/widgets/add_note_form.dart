import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formstate = GlobalKey();
  String? title, subtitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  NoteModel noteModel = NoteModel(
                      color: Colors.red.value,
                      date: DateTime.now().toString(),
                      subtitle: subtitle!,
                      title: title!);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
    );
  }
}
