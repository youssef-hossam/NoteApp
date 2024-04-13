import 'package:flutter/material.dart';
import '../constant.dart';
import '../methods/build_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.text,
      this.padding,
      this.onSaved,
      this.onChanged});
  final String text;
  final EdgeInsetsGeometry? padding;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return ' it cant be empty';
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: text,
        hintStyle: const TextStyle(color: Kprimarycolor),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(
          const Color(0xff62FCD7),
        ),
      ),
    );
  }
}
