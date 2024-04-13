import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';

import '../models/note_model.dart';
import 'custom_appbar.dart';
import 'custom_textfield.dart';

class EditNoteForm extends StatefulWidget {
  EditNoteForm({super.key, required this.note});
  NoteModel note;
  @override
  State<EditNoteForm> createState() => _EditNoteFormState();
}

class _EditNoteFormState extends State<EditNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formstate = GlobalKey();
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formstate,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            CustomAppBar(
              icon: Icons.check,
              onPressed: () {
                if (title != null) {
                  widget.note.title = title!;
                }
                if (subtitle != null) {
                  widget.note.subtitle = subtitle!;
                }
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              onSaved: (value) {
                title = value;
              },
              text: widget.note.title,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              onChanged: (value) {
                subtitle = value;
              },
              onSaved: (value) {
                subtitle = value;
              },
              text: widget.note.subtitle,
              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 10.w),
            )
          ],
        ),
      ),
    );
  }
}
