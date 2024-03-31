import 'package:flutter/material.dart';

import '../constant.dart';
import '../methods/build_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.padding});
  final String text;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
