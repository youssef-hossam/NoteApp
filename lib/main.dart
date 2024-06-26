import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/simple_observer.dart';
import 'package:noteapp/views/edit_notes_view.dart';
import 'package:noteapp/views/notes_view.dart';

import 'cubits/notes_cubit/notes_cubit.dart';
import 'models/note_model.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(360, 690),
      child: BlocProvider(
        create: (context) => NotesCubit(),
        child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
          debugShowCheckedModeBanner: false,
          home: const NotesView(),
          routes: {},
        ),
      ),
    );
  }
}
