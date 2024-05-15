import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_social_task_1/core/theme/app_pallet.dart';

class CardWithTextWidget extends StatelessWidget {
  final String text;
  final String icon;
  const CardWithTextWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.w,
      height: 57.h,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 2,
              offset: Offset(-1, -1),
              color: Colors.black.withOpacity(0.3)),
          BoxShadow(
              blurRadius: 2,
              offset: Offset(-1, -1),
              color: Color(0xFF484848).withOpacity(0.3)),
          BoxShadow(
              blurRadius: 8,
              offset: Offset(2, 2),
              color: Colors.black.withOpacity(0.3)),
        ],
        color: AppPallet.cardWithTextColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 20.w,
            height: 20.h,
          ),
          SizedBox(
            width: 5.w,
          ),
          SizedBox(
            width: 117.w,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
