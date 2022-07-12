import 'package:flutter/material.dart';
import 'package:mvvm_provider_architecture/ui/views/home_view.dart';
import 'package:mvvm_provider_architecture/viewmodels/users_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UsersViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MVVM',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const HomeScreen(),
      ),
    );
  }
}
