import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utilities/routes.dart';
import 'package:flutter_ecommerce/views/pages/login_page.dart';

import '../views/pages/landing_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return MaterialPageRoute(builder: (_)=> const LoginPage());
    case AppRoutes.landingPageRoute:
    default:
      return MaterialPageRoute(
        builder: (_) => const LandingPage(),
      );
  }
}
