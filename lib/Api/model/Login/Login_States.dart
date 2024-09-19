

import 'package:e_commerce/Api/model/Login/login_response.dart';

abstract class LoginStates {}

class LoginInichialStates extends LoginStates {}

class LoginLoudingStates extends LoginStates {}

class LoginErorrStates extends LoginStates {
  String erorrMessage;
  LoginErorrStates({required this.erorrMessage});
}

class LoginSuccessStates extends LoginStates {
    LoginResponse response;
  LoginSuccessStates({required this.response});
}
