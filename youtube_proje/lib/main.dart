import 'package:flutter/material.dart';
import 'package:youtube_proje/screens/forgot_screen.dart';
import 'package:youtube_proje/screens/home_screen.dart';
import 'package:youtube_proje/screens/login_screen.dart';
import 'package:youtube_proje/screens/navigation_screen.dart';
import 'package:youtube_proje/screens/onboarding_screen.dart';
import 'package:youtube_proje/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ECommerce Sopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFDB3022),
      ),

      home: SplashScreen(),
    );
  }
}
