import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';
import 'home_page.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30, 
            vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: fromCssColor('#4B5563'),
                ),
              ),
              SizedBox(height: 30),
              Text('Court Booking', 
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text("Easily and quickly book sports courts at your convenience. Choose from a variety of courts, select your prefered duration, and confirm your booking seamlessly",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: fromCssColor('#4B5563')
                ),
              ),
              SizedBox(height: 30),
              CustomButton(
                textButton: "Get Started", 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage())
                  );
                })
            ],
          ),
        ),
      )
    );
  }
}