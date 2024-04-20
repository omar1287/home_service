


import 'package:flutter/material.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/view/Home/ui/home_screen.dart';
import 'package:home_services/view/login/ui/login_screen.dart';
import 'package:home_services/view/onboarding/ui/Onboarding.dart';
import 'package:home_services/view/register/ui/register_screen.dart';
import 'package:home_services/view/splach_screen/splash_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case Routes.Onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case Routes.Login:
        return MaterialPageRoute(builder: (_) => const Login());
      case Routes.Register:
        return MaterialPageRoute(builder: (_) => const Register());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const Home());


      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Text('No Route defined fo ${settings.name}'),
                ));
    }
  }
}
