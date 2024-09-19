import 'package:e_commerce/Api/Api_manager.dart';
import 'package:e_commerce/Api/model/Register/Register_States.dart';
import 'package:e_commerce/Shared/SharedPreference_Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCupit extends Cubit<RegisterStates> {
  RegisterCupit() : super(RegisterInichialStates());
  var formKey = GlobalKey<FormState>();
  var obscureText = false;
  var nameController = TextEditingController(text: "zozz");
  var phoneController = TextEditingController(text: "01554253669");
  var emailController = TextEditingController(text: "z@gmail.com");
  var passwordController = TextEditingController(text: "123456");
  var repasswordController = TextEditingController(text: "123456");

  void register() async {
    try {
      emit(RegisterLoudingStates());
      var response = await Api_maneger.Register(
          nameController.text,
          emailController.text,
          passwordController.text,
          repasswordController.text,
          phoneController.text);
      if (response.statusMsg == 'fail') {
        emit(RegisterErorrStates(erorrMessage: response.message!));
      } else {
        emit(RegisterSuccessStates(response: response));
        SharedpreferenceUtils.SetData(key: "token", value: response.token);
      }
    } catch (e) {
      emit(RegisterErorrStates(erorrMessage: e.toString()));
    }
  }
}
