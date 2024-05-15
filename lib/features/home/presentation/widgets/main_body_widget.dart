import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_social_task_1/features/home/presentation/widgets/card_with_text_widget.dart';
import 'package:stroll_social_task_1/features/home/presentation/widgets/profile_with_title_widget.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300.h,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              // color: Colors.white,
              decoration: const BoxDecoration(color: Colors.black, boxShadow: [
                BoxShadow(
                    blurRadius: 30,
                    offset: Offset(0, -30),
                    color: Colors.black26),
                BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, -15),
                    color: Colors.black54),
              ]),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 15.h,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "What is your favorite time\nof the day?",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "“Mine is definitely the peace in the morning.”",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFCBC9FF)),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardWithTextWidget(
                        icon: "assets/svgs/option_a.svg",
                        text: "The peace in the early mornings",
                      ),
                      CardWithTextWidget(
                        icon: "assets/svgs/option_b.svg",
                        text: "The magical golden hours",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardWithTextWidget(
                        icon: "assets/svgs/option_c.svg",
                        text: "Wind-down time after dinners",
                      ),
                      CardWithTextWidget(
                        icon: "assets/svgs/option_d.svg",
                        text: "The serenity past midnight",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pick your option.",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "See who has a similar mind.",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        "assets/svgs/mic.svg",
                        width: 48.w,
                        height: 48.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(
                        "assets/svgs/next_icon.svg",
                        width: 48.w,
                        height: 48.h,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Align(
              alignment: Alignment.topLeft, child: ProfileWithTitleWidget())
        ],
      ),
    );
  }
}
