import 'package:flutter/material.dart';
import 'package:health_fitness/core/constants/constants.dart';
import 'package:health_fitness/core/utils/assets_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.loginBgImage,
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Text(
              'Login View',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: Constants.fontFamilyPlusJakartaSans,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
