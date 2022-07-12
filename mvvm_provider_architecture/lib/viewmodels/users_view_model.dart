import 'package:flutter/material.dart';
import 'package:mvvm_provider_architecture/services/api_status.dart';
import 'package:mvvm_provider_architecture/services/user_service.dart';
import '../models/user_error.dart';
import '../models/user_models.dart';

class UsersViewModel extends ChangeNotifier {
  late  bool _loading  = false;
  late List<UserModel> _userModel = [];
  // late UserError _userError;
  late UserModel _selectedUser;


  bool get loading => _loading;
  List<UserModel> get userModel => _userModel;
  // UserError get userError => _userError;
  UserModel get selectedUser => _selectedUser;

  UsersViewModel() {
    getUsers();
  }
  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();

  }

  setUserListModel(List<UserModel> userModel) {
    _userModel = userModel;

  }

  setUserError(UserError userError) {
    // _userError = userError;

  }

  setSelectedUser(UserModel userModel) {
    _selectedUser = userModel;

  }

  getUsers() async {
    setLoading(true);
    var response = await UserServices.getUsers();
    if(response is Success) {
      setUserListModel(response.response as List<UserModel>);
    }
    if(response is Failure) {
      UserError userError = UserError(
        code: response.code,
        message: response.errorResponse,

      );
      setUserError(userError);
    }
    setLoading(false);
  }


}