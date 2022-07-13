import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, model, Widget? child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
