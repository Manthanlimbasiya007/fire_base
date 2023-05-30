import 'package:data_base/screen/view/homescreen.dart';
import 'package:data_base/screen/view/signin_screen.dart';
import 'package:data_base/screen/view/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => SignInScreen(),),
        GetPage(name: '/signUp', page: () => SignUpScreen(),),
        GetPage(name: '/home', page: () => HomeScreen(),),
      ],
    ),
  );
}
