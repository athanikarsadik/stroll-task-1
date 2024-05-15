import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWithTitleWidget extends StatelessWidget {
  const ProfileWithTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 160.w,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            // right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              decoration: BoxDecoration(
                  color: Color(0xFF121518),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Text(
                "Angelina, 28",
                style: TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontWeight: FontWeight.w700,
                  fontSize: 11.sp,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 45.r,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 35.r,
                backgroundImage: AssetImage('assets/images/face_photo.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
