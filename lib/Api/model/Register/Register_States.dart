import 'package:e_commerce/Api/model/Register/register_response.dart';

abstract class RegisterStates {}

class RegisterInichialStates extends RegisterStates {}

class RegisterLoudingStates extends RegisterStates {}

class RegisterErorrStates extends RegisterStates {
  String erorrMessage;
  RegisterErorrStates({required this.erorrMessage});
}

class RegisterSuccessStates extends RegisterStates {
    RegisterResponse response;
  RegisterSuccessStates({required this.response});
}
