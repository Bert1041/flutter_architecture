import 'package:flutter/material.dart';

import '../../ui/views/home_view.dart';
import '../../ui/views/login_view.dart';
import '../../ui/views/signup_view.dart';
import '../constants/route_names.dart';

class RoutesClass {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Here we'll handle all the routing
    switch (settings.name) {
      case loginViewRoute:
        return MaterialPageRoute(builder: (context) => LoginView());
      case signUpViewRoute:
        return MaterialPageRoute(builder: (context) => SignUpView());
      case homeViewRoute:
        return _getPageRoute(
            viewToShow: const HomeView(), routeName: homeViewRoute);
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

PageRoute _getPageRoute(
    {required String routeName, required Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
