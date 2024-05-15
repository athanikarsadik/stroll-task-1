import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_social_task_1/core/const/constants.dart';
import 'package:stroll_social_task_1/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(Constants.width, Constants.height),
        builder: (_, child) {
          return MaterialApp(
            title: 'Stroll Social',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'ProximaNova',
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const HomeScreen(),
          );
        });
  }
}
