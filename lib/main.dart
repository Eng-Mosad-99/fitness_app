import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const HealthFitness());
}

class HealthFitness extends StatelessWidget {
  const HealthFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 879),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Health & Fitness',
          home: Scaffold(
            body: Center(
              child: Text(
                'Welcome to Health & Fitness App',
                style: TextStyle(fontSize: 24.sp),
              ),
            ),
          ),
        );
        },
    );
  }
}