import 'package:flutter/material.dart';
import 'package:mvvm_provider_architecture/ui/views/user_details_view.dart';

void openUserDetails(BuildContext context) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const UserDetailsScreen(),
    ),
  );
}
