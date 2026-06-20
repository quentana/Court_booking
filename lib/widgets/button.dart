import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPressed;
  final double witdhButton;
  final double heightbutton;
  final double titleSize;
  final double radiusButton;
  final Color backgroundColor;

  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.heightbutton = 50,
    this.witdhButton = double.infinity,
    this.titleSize = 16,
    this.radiusButton = 10,
    this.backgroundColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: witdhButton,
      height: heightbutton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(radiusButton),
          ),
        ),
        child: Text(
          textButton,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: titleSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
