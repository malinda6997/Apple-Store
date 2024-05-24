import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.25,
            decoration: BoxDecoration(
                // color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('assets/images/auth.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Create Account",
            style: GoogleFonts.poppins(),
          ),
        ],
      ),
    );
  }
}
