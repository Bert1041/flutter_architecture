import 'package:flutter/material.dart';
import 'package:mvvm_provider_architecture/ui/components/app_title.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/users_view_model.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(usersViewModel.selectedUser.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTitle(text: usersViewModel.selectedUser.name,),
            Text(usersViewModel.selectedUser.email, style: const TextStyle(color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
