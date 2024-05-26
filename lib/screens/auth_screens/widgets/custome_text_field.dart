import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeTextField extends StatefulWidget {
  const CustomeTextField({
    super.key,
    required this.hint,
    required this.frefixIcon,
    this.isPassword = false,
    this.controller,
  });

  final String hint;
  final IconData frefixIcon;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  State<CustomeTextField> createState() => _CustomeTextFieldState();
}

class _CustomeTextFieldState extends State<CustomeTextField> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: widget.controller,
        obscureText: isObscure,
        cursorColor: Colors.white,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          fillColor: Colors.black45,
          filled: true,
          hintText: widget.hint,
          hintStyle: GoogleFonts.poppins(color: Colors.white),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white,
                  ))
              : null,
          prefixIcon: Icon(
            widget.frefixIcon,
            color: Colors.white,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(9)),
        ),
      ),
    );
  }
}
