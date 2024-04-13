import 'package:flutter/material.dart';
import 'package:noteapp/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});

  static String id = 'EditNote';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
