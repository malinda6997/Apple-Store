import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.size,
    required this.text,
    this.BgColor = Colors.black,
    this.textColor = Colors.white,
    this.boderColor = Colors.black,
    this.ontap,
  });

  final Size size;
  final String text;
  final Color BgColor;
  final Color textColor;
  final Color boderColor;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: textColor),
              ),
            ),
            width: size.width,
            height: 55,
            decoration: BoxDecoration(
                border: Border.all(color: boderColor),
                color: BgColor,
                borderRadius: BorderRadius.circular(9)),
          ),
        ),
      ),
    );
  }
}
