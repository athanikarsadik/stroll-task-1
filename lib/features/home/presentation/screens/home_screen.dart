import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_social_task_1/core/theme/app_pallet.dart';
import 'package:stroll_social_task_1/features/home/presentation/widgets/main_body_widget.dart';
import 'package:stroll_social_task_1/features/home/presentation/widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        primary: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/background_img.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //title widget
              SizedBox(
                height: 70.h,
              ),
              const TitleWidget(),
              Spacer(),
              MainBodyWidget()
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60.h,
          color: AppPallet.bottomNavbarColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/svgs/navbar_icon_1.svg"),
              SvgPicture.asset("assets/svgs/navbar_icon_2.svg"),
              SvgPicture.asset("assets/svgs/navbar_icon_3.svg"),
              SvgPicture.asset("assets/svgs/navbar_icon_4.svg"),
            ],
          ),
        ));
  }
}
