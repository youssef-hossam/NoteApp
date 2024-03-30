import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: 46.w,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, size: 28),
      ),
    );
  }
}
