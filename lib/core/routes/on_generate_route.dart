import 'package:flutter/material.dart';
import 'package:health_fitness/core/routes/app_routes.dart';
import 'package:health_fitness/features/auth/presentation/views/login_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.login:
      return MaterialPageRoute(builder: (context) => const LoginView());

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name},')),
        ),
      );
  }
}
