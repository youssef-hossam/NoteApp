part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFaliure extends NotesState {
  final String errormessage;

  NotesFaliure(this.errormessage);
}
