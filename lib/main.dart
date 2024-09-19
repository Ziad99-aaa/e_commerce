import 'package:e_commerce/Pages/Home_Screen.dart';
import 'package:e_commerce/Pages/Login_Screen.dart';
import 'package:e_commerce/Pages/SignUp_Screen.dart';
import 'package:e_commerce/Pages/taps/ProductDetils.dart';
import 'package:e_commerce/Shared/SharedPreference_Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  String route;
  WidgetsFlutterBinding.ensureInitialized();
  await SharedpreferenceUtils.init();
  var token = await SharedpreferenceUtils.getData(key: "token");
  print("********************$token");
  if (token == null) {
    route = LoginScreen.routName;
  } else {
    route = HomeScreen.routName;
  }

  runApp(MyApp(
    rout: route,
  ));
}

class MyApp extends StatelessWidget {
  String rout;
  MyApp({required this.rout});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (context, child) {
          return MaterialApp(
            initialRoute: rout,
            routes: {
              SignUpScreen.routName: (context) => SignUpScreen(),
              LoginScreen.routName: (context) => LoginScreen(),
              HomeScreen.routName: (context) => HomeScreen(),
              ProductDetailsPage.roteName: (context) => ProductDetailsPage(),
            },
          );
        });
  }
}
