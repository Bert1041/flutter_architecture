import 'package:flutter/material.dart';
import 'package:mvvm_stacked_architecture/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: const Center(
          child: Text('Startup View'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => model.navigateToHome(context),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
