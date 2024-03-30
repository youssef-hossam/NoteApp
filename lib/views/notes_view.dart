import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/widgets/notes_view_body.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_note_item.dart';
import '../widgets/custom_notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: NotesViewBody());
  }
}
