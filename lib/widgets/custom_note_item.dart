import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNotesView(note: note),
            ));
      },
      child: Container(
        height: 150.h,
        padding:
            EdgeInsets.only(top: 20.h, bottom: 20.h, right: 10.w, left: 10.h),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 24.sp),
              ),
              subtitle: Text(
                note.subtitle,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18.sp),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 28.sp,
                  )),
            ),
            Text(
              note.date.toString(),
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
