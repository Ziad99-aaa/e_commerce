import 'package:e_commerce/Pages/Home_Screen.dart';
import 'package:e_commerce/Pages/SignUp_Screen.dart';
import 'package:e_commerce/Pages/taps/Home.dart';
import 'package:e_commerce/Shared/DialogUtils.dart';
import 'package:e_commerce/Shared/app_color.dart';
import 'package:e_commerce/Api/model/Login/Login_States.dart';
import 'package:e_commerce/Api/model/Login/Login_cupit.dart';
import 'package:e_commerce/Api/model/Register/Register_States.dart';
import 'package:e_commerce/Api/model/Register/Register_cupit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  static const String routName = "Login_Screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginCupit cupit = LoginCupit();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCupit, LoginStates>(
        bloc: cupit,
        listener: (context, state) {
          if (state is LoginLoudingStates) {
            Dialogutils.ShowLoudingDialog(context: context);
          } else if (state is LoginErorrStates) {
            Dialogutils.HideLoudingDialog(context);
            Dialogutils.ShowMessageDialog(
                context: context,
                content: state.erorrMessage,
                nigActionName: "ok");
          } else if (state is LoginSuccessStates) {
            Dialogutils.HideLoudingDialog(context);

            Dialogutils.ShowMessageDialog(
              context: context,
              content: "Login Success",
              posActionName: "ok",
            );
          }
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: AppColor.primarycolor,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: cupit.formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Image.asset("assets/Group 5.png"),
                      SizedBox(height: 40),
                      Text(
                        'Welcome Back To Route',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Please sign in with your mail',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'User Name',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            onChanged: (text) {
                              cupit.emailController =
                                  TextEditingController(text: text);
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Password',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            obscureText: cupit.obscureText,
                            validator: (text) {
                              if (text!.length < 6) {
                                return "please Valid Password ar least 6 char";
                              }
                              return null;
                            },
                            onChanged: (text) {
                              cupit.passwordController =
                                  TextEditingController(text: text);
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  cupit.obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  if (cupit.obscureText) {
                                    cupit.obscureText = false;
                                  } else {
                                    cupit.obscureText = true;
                                  }
                                  setState(() {});
                                },
                              ),
                              hintText: 'Enter your password',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {},
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (cupit.formKey.currentState!.validate()) {
                            cupit.Login();
                          }
                          // Navigate to home screen
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColor.primarycolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SignUpScreen.routName);
                            },
                            child: Text(
                              'Create Account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
