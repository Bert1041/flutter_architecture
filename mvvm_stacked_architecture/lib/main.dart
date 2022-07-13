import 'package:flutter/material.dart';
import 'package:mvvm_stacked_architecture/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';
import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      // navigatorKey: StackedService.navigatorKey,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),

    );
  }
}
