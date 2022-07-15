import '../utils/locator.dart';
import '../services/authentication_service.dart';
import 'base_model.dart';


class SignUpViewModel extends BaseModel {

  final AuthenticationService _authenticationService = locator<AuthenticationService>();

  Future signUp({required String email, required String password}) async {
    setBusy(true);

    var result = await _authenticationService.signUpWithEmail(
        email: email, password: password);

    setBusy(false);
    if (result is bool) {
      if (result) {
        print('fff');
      } else {


      }
    } else {

    }
  }
}