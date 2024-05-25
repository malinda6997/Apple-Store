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
        crossAxisAlignment: CrossAxisAlignment.start,
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
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Account",
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "Sign up your account",
                  style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    hintText: "Email Address",
                    hintStyle: GoogleFonts.poppins(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(9)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
