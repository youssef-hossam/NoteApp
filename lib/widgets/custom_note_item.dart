import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'EditNote');
      },
      child: Container(
        padding:
            EdgeInsets.only(top: 30.h, bottom: 20.h, right: 10.w, left: 10.h),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter Tipes",
                style: TextStyle(color: Colors.black, fontSize: 24.sp),
              ),
              subtitle: Text(
                "This app was built by youssef hossam",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18.sp),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 28.sp,
                  )),
            ),
            Text(
              "May,2023",
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
