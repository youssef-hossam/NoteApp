import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:meta/meta.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    emit(NotesLoading());
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesBox.values.toList();
    emit(NotesSuccess(notes));
  }
}
