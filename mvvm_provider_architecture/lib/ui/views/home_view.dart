import 'package:flutter/material.dart';
import 'package:mvvm_provider_architecture/ui/components/app_loading.dart';
import 'package:mvvm_provider_architecture/viewmodels/users_view_model.dart';
import 'package:provider/provider.dart';

import '../../models/user_models.dart';
import '../../utils/navigation/navigation.dart';
import '../components/app_title.dart';
import '../components/user_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: AppTitle(text: 'Users List')),
      ),
      body: Column(
        children: [
          _ui(usersViewModel),
        ],
      ),
    );
  }

  _ui(UsersViewModel usersViewModel) {
    if (usersViewModel.loading) {
      return const AppLoading();
    }
    // if (usersViewModel.userError != null) {
    //   return Container();
    // }
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            UserModel userModel = usersViewModel.userModel[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: UserList(
                userModel: userModel,
                func: () {
                  usersViewModel.setSelectedUser(userModel);
                  openUserDetails(context);
                },
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: usersViewModel.userModel.length),
    );
  }
}
