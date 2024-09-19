import 'package:e_commerce/Pages/taps/Category.dart';
import 'package:e_commerce/Pages/taps/Favorete.dart';
import 'package:e_commerce/Pages/taps/Home.dart';
import 'package:e_commerce/Pages/taps/ProfilePage.dart';
import 'package:e_commerce/Shared/CustomBottomBar.dart';
import 'package:e_commerce/Shared/app_color.dart';
import 'package:e_commerce/Api/Api_manager.dart';
import 'package:e_commerce/Api/model/Home/categoryOrBrand_response.dart';
import 'package:e_commerce/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "Home_Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> taps = [
    Home(),
    Category(),
    Fav(),
    Profilepage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: taps[selectedIndex],
      bottomNavigationBar: CustombottomBar(
          selectedIndex: selectedIndex,
          onTapFunc: (index) {
            selectedIndex = index;
            setState(() {});
          },
          context: context),
    );
  }
}
