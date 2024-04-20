


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/Routting/Routs.dart';
import 'package:home_services/view/Home/ui/Screens/Home_body.dart';
import 'package:home_services/view/Home/ui/Screens/category_body.dart';
import 'package:home_services/view/Home/ui/best_services_screen.dart';
import 'package:home_services/view/Home/ui/home_screen.dart';
import 'package:home_services/view/Home/ui/widget/bottom_nav_bar.dart';
import 'package:home_services/view/login/ui/login_screen.dart';
import 'package:home_services/view/onboarding/ui/Onboarding.dart';
import 'package:home_services/view/register/ui/register_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case Routes.Login:
        return MaterialPageRoute(builder: (_) => const Login());
      case Routes.Register:
        return MaterialPageRoute(builder: (_) => const Register());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const Home());
        case Routes.mainNav:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
        case Routes.BestServices:
        return MaterialPageRoute(builder: (_) => const BestServicesScrean());
        case Routes.category:
        return MaterialPageRoute(builder: (_) => const CategoryBody());


      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Text('No Route defined fo ${settings.name}'),
                ));
    }
  }
}
