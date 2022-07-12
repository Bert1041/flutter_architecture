import 'package:firebase_authentication_mvvm/ui/views/home_view.dart';
import 'package:firebase_authentication_mvvm/ui/views/login_view.dart';
import 'package:firebase_authentication_mvvm/ui/views/signup_view.dart';
import 'package:firebase_authentication_mvvm/ui/widgets/undefindView.dart';
import 'package:flutter/material.dart';

import '../constants/route_names.dart';


class RoutesClass{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Here we'll handle all the routing
    switch (settings.name) {
      case loginViewRoute:
        return MaterialPageRoute(builder: (context) => LoginView());
      case signUpViewRoute:
        return MaterialPageRoute(
            builder: (context) => SignUpView());
      case homeViewRoute:
        return MaterialPageRoute(
            builder: (context) => const HomeView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
        return MaterialPageRoute(
            builder: (context) => UndefinedView(
              name: settings.name,
            ));
    }
  }

}


// PageRoute _getPageRoute({required String routeName, required Widget viewToShow}) {
//   return MaterialPageRoute(
//       settings: RouteSettings(
//         name: routeName,
//       ),
//       builder: (_) => viewToShow);
// }