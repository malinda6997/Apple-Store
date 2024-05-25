import 'dart:async';
import 'package:apple/screens/auth_screens/auth_screen.dart';
import 'package:apple/utils/custome_navigater.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      CustomeNavigator.pushReplacement(context, AuthScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.jpeg',
              width: size.width * 0.3,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Developed by Malinda Prabath',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
