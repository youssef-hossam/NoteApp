import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: CustomNoteItem(),
        );
      },
    );
  }
}
