import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_fitness/core/helper/connectivity_helper.dart';
import 'package:health_fitness/core/utils/assets_manager.dart';

void main() {
  runApp(const HealthFitness());
}

class HealthFitness extends StatelessWidget {
  const HealthFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityHelper.instance.isConnected,
      builder: (_, value, _) {
        if (!value) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Health & Fitness',
            home: Scaffold(
              body: Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.noNetworkImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        } else {
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
                builder: (context, child) {
                 return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityHelper.instance.init();
                      return child!;
                    }
                  ),
                 );
                },
              );
            },
          );
        }
      },
    );
  }
}
