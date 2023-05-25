import 'package:data_base/screen/view/homescreen.dart';
import 'package:data_base/screen/view/signin_screen.dart';
import 'package:data_base/screen/view/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SignInScreen(),
        '/signup':(context) => SignUpScreen(),
        '/home':(context) => HomeScreen(),
      },
    ),
  );
}
