import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:court_booking/widgets/button.dart';
import 'package:court_booking/views/payment_page.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Order Summary',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BasketBall Court A",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Indoor || Air Conditionned",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      Text(
                        "Date",
                        style: GoogleFonts.poppins(
                          color: fromCssColor('#4B5563'),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Monday, Apr 30",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    child: Center(
                      child: Divider(thickness: 1, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.hourglass_top),
                      Text(
                        "Duration",
                        style: GoogleFonts.poppins(
                          color: fromCssColor('#4B5563'),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "2 Hours",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    child: Center(
                      child: Divider(thickness: 1, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.discount),
                      Text(
                        "Price per hour",
                        style: GoogleFonts.poppins(
                          color: fromCssColor('#4B5563'),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp.50.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "SubTotal (2 hours)",
                        style: GoogleFonts.poppins(
                          color: fromCssColor('#4B5563'),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp.50.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Service fee",
                        style: GoogleFonts.poppins(
                          color: fromCssColor('#4B5563'),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp.5.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Total ",
                        style: GoogleFonts.poppins(
                          color: fromCssColor('#4B5563'),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rp.105.000",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20), 
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info, color: Colors.black, size: 30),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booking Policy",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,  
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Please note that bookings are non-refundable. Rescheduling is allowed up to 24 hours before the reserved time.",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: fromCssColor("#485563"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomButton(textButton: "Choose Payment Method", onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage())
                );
            }),
          ],
        ),
      ),
    );
  }
}
