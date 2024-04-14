import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> noteColors = const [
    Color(0xffDB504A),
    Color(0xffFF8E59),
    Color(0xff43AA8B),
    Color(0xffB2B09B),
    Color(0xffDB504A),
  ];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentindex = index;
            BlocProvider.of<AddNoteCubit>(context).color = noteColors[index];
            setState(() {});
          },
          child: Colorcirc(
            Color: noteColors[index],
            active: currentindex == index,
          ),
        ),
      ),
    );
  }
}

class Colorcirc extends StatelessWidget {
  const Colorcirc({super.key, required this.active, this.Color});
  // ignore: prefer_typing_uninitialized_variables
  final Color;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return active
        ? CircleAvatar(
            radius: 35.r,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 32.r,
              backgroundColor: Color,
            ),
          )
        : CircleAvatar(
            radius: 38.r,
            backgroundColor: Color,
          );
  }
}
