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
  String Type = 'signup';
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
                    Type == 'signup'
                        ? "Create Account"
                        : Type == 'signin'
                            ? "Sign In"
                            : 'Forgot Password',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    Type == 'signup'
                        ? "Sign up your account"
                        : Type == 'signin'
                            ? "Sign in to your account"
                            : "Please enter your email here to receive a link to change your password",
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomeTextField(
                      hint: 'Email Address', frefixIcon: Icons.email_rounded),
                  Type != 'forgotPassword'
                      ? CustomeTextField(
                          hint: 'Password',
                          frefixIcon: Icons.lock_rounded,
                          isPassword: true,
                        )
                      : SizedBox(),
                  Type != 'signin'
                      ? SizedBox()
                      : Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  Type = 'forgotPassword';
                                });
                              },
                              child: Text('Forget Password?'))),
                  Type == 'signup'
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
                    text: Type == 'signup'
                        ? 'Sign Up'
                        : Type == 'signin'
                            ? 'Sign In'
                            : 'Sent Email',
                    ontap: () {
                      CustomeNavigator.push(context, HomeScreen());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomeButton(
                    size: size,
                    text: Type == 'signup'
                        ? 'Sign In'
                        : Type == 'signin'
                            ? 'Sign Up'
                            : 'Cancel',
                    BgColor: Colors.white,
                    textColor: Colors.black,
                    ontap: () {
                      setState(() {
                        if (Type == 'signin') {
                          Type = 'signup';
                        } else if (Type == 'signup') {
                          Type = 'signin';
                        } else if (Type == 'forgotPassword') {
                          Type = 'signup';
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
