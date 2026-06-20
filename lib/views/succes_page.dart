import 'package:court_booking/views/boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:court_booking/widgets/button.dart';

class  SuccesPage extends StatelessWidget {
  const  SuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Payment Success',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[50],
              ),
              child: Center(
                child: Icon(Icons.check, color: Colors.black, size: 50),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Booking Successful",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Your court has been reserved successfully",
              style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Booking Details",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Court Name",
                            style: GoogleFonts.poppins(
                              color: fromCssColor("#485563"),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Basketball Court A",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Date",
                            style: GoogleFonts.poppins(
                              color: fromCssColor("#485563"),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Apr 30",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Duration",
                            style: GoogleFonts.poppins(
                              color: fromCssColor("#485563"),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "2 hours",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Payment Method",
                            style: GoogleFonts.poppins(
                              color: fromCssColor("#485563"),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Cash Payment",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rp. 105.000",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(
                  textButton: "Download Receipt",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BoardingPage()),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 10),
            CustomButton(
              textButton: "Back to Home",
              backgroundColor: Colors.grey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BoardingPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
