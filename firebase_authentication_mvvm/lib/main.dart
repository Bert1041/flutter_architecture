import 'package:firebase_authentication_mvvm/ui/router.dart';
import 'package:firebase_authentication_mvvm/ui/views/signup_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpView(),
      onGenerateRoute: RoutesClass.generateRoute,
    );
  }
}