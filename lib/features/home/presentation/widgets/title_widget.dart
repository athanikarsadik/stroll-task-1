import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_social_task_1/core/theme/app_pallet.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Stroll Bonfire",
              style: TextStyle(
                fontSize: 34.sp,
                shadows: [
                  // Shadow(
                  //     blurRadius: 7.9,
                  //     color: Color(0xFF000000).withOpacity(0.2),
                  //     offset: Offset(0, 0)),
                  Shadow(
                      blurRadius: 2,
                      color: Color(0xFFBEBEBE).withOpacity(0.2),
                      offset: Offset(0, 0)),
                  Shadow(
                      blurRadius: 2,
                      color: Color(0xFF24232F).withOpacity(0.5),
                      offset: Offset(0, 1)),
                ],
                fontWeight: FontWeight.w700,
                color: AppPallet.titleTextColor,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: AppPallet.titleTextColor,
              size: 35.sp,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.timer_sharp,
              color: Colors.white,
              size: 20.sp,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              "22h 00m",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp),
            ),
            SizedBox(
              width: 10.w,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 20.sp,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              "103",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp),
            ),
          ],
        ),
      ],
    );
  }
}
