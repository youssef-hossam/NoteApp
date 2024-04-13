import 'package:flutter/material.dart';
import 'package:noteapp/models/note_model.dart';

import 'edit_note_form.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return EditNoteForm(
      note: note,
    );
  }
}
