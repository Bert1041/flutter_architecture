import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_stacked_architecture/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


import '../../../app/locator.dart';

class StartupViewModel extends BaseViewModel {

  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome(BuildContext context) async {
    await AutoRouter.of(context).pushNamed('/home');

    // await _navigationService.navigateTo('/home');
  }

}
