import 'package:firebase_authentication_mvvm/utils/constants/route_names.dart';
import 'package:firebase_authentication_mvvm/utils/navigation/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'utils/locator.dart';




Future<void> main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: signUpViewRoute,
      onGenerateRoute: RoutesClass.generateRoute,
    );
  }
}