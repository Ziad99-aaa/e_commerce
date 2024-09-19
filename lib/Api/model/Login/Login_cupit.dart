import 'package:e_commerce/Api/Api_manager.dart';
import 'package:e_commerce/Api/model/Login/Login_States.dart';
import 'package:e_commerce/Api/model/Login/login_response.dart';
import 'package:e_commerce/Shared/SharedPreference_Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCupit extends Cubit<LoginStates> {
  LoginCupit() : super(LoginInichialStates());
  var formKey = GlobalKey<FormState>();
  var obscureText = false;

  var emailController = TextEditingController(text: "z@gmail.com");
  var passwordController = TextEditingController(text: "123456");

  void Login() async {
    try {
      emit(LoginLoudingStates());
      LoginResponse response = await Api_maneger.Login(
          emailController.text, passwordController.text);

      if (response.statusMsg == 'fail') {
        emit(LoginErorrStates(erorrMessage: response.message!));
      } else {
        emit(LoginSuccessStates(response: response));
        SharedpreferenceUtils.SetData(key: "token", value: response.token);
      }
    } catch (e) {
      emit(LoginErorrStates(erorrMessage: e.toString()));
    }
  }
}
