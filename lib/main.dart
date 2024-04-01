import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/views/edit_notes_view.dart';
import 'package:noteapp/views/notes_view.dart';

void main() async {
  runApp(const NoteApp());
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(360, 690),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
        routes: {EditNotesView.id: (context) => EditNotesView()},
      ),
    );
  }
}
