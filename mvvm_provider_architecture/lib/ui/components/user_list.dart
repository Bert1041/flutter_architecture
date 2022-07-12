import 'package:flutter/material.dart';

import '../../models/user_models.dart';
import 'app_title.dart';

class UserList extends StatelessWidget {
  const UserList({
    Key? key,
    required this.userModel, required this.func,
  }) : super(key: key);

  final UserModel userModel;
  final Function() func;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTitle(
            text: userModel.name,
          ),
          Text(
            userModel.email,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}