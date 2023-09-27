// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../Auth/login_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Declare your method channel varibale here

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: MyLoginScreen(), 
      text: 'Food Delivery',
      backgroundColor: Colors.green.shade400,
      duration: 5000,
      textType: TextType.NormalText,
      textStyle: TextStyle(fontSize: 30.0, color: Colors.white),
    );
  }
}