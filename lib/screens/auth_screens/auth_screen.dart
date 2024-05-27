import 'package:apple/components/Buttons/custome_button.dart';
import 'package:apple/screens/auth_screens/widgets/custome_text_field.dart';
import 'package:apple/screens/home_screens/home_screen.dart';
import 'package:apple/utils/custome_navigater.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isSignUp = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    isSignUp ? "Create Account" : "Sign In",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    isSignUp
                        ? "Sign up your account"
                        : "Sign in to your account",
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomeTextField(
                      hint: 'Email Address', frefixIcon: Icons.email_rounded),
                  CustomeTextField(
                    hint: 'Password',
                    frefixIcon: Icons.lock_rounded,
                    isPassword: true,
                  ),
                  isSignUp
                      ? SizedBox()
                      : Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text('Forget Password?'))),
                  isSignUp
                      ? CustomeTextField(
                          hint: 'Confirm Password',
                          frefixIcon: Icons.lock_rounded,
                          isPassword: true,
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeButton(
                    size: size,
                    text: isSignUp ? 'Sign Up' : 'Sign In',
                    ontap: () {
                      CustomeNavigator.push(context, HomeScreen());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomeButton(
                    size: size,
                    text: isSignUp ? 'Sign In' : 'Sign Up',
                    BgColor: Colors.white,
                    textColor: Colors.black,
                    ontap: () {
                      setState(() {
                        isSignUp = !isSignUp;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
