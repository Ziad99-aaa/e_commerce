import 'package:e_commerce/Pages/Login_Screen.dart';
import 'package:e_commerce/Shared/SharedPreference_Utils.dart';
import 'package:e_commerce/Shared/buildProfileField.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome, Mohamed',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'mohamed.N@gmail.com',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () async{
                        await SharedpreferenceUtils.deleteData(key: "token");
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routName);
                      },
                      icon: Icon(Icons.logout_outlined))
                ],
              ),
              SizedBox(height: 32),
              buildProfileField('Your full name', 'Mohamed Mohamed Nabil'),
              SizedBox(height: 16),
              buildProfileField('Your E-mail', 'mohamed.N@gmail.com'),
              SizedBox(height: 16),
              buildProfileField('Your password', '*********************',
                  obscureText: true),
              SizedBox(height: 16),
              buildProfileField('Your mobile number', '01122118855'),
              SizedBox(height: 16),
              buildProfileField('Your Address', '6th October, street 11.....'),
            ],
          ),
        ),
      ),
    );
  }
}
