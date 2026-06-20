import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:court_booking/views/qrpayment_page.dart';
import 'package:court_booking/views/succes_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Payment Method',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Payment',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Select your preferred payment method",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: fromCssColor('#4B5563'),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccesPage()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: fromCssColor("#E5E7EB"),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.payment, size: 30),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pay on Location",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                "Cash Payment",
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
                    SizedBox(
                      height: 30,
                      child: Center(
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                    ),
                    Text(
                      "Pay with cash when you arrive at the location",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: fromCssColor("#485563"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QrpaymentPage()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: fromCssColor("#E5E7EB"),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.qr_code, size: 30),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pay on Qr",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold, 
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                "Pay via QRIS",
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
                    SizedBox(
                      height: 30,
                      child: Center(
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                    ),
                    Text(
                      "Scan QR Code to pay instantly with your e-wallet",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: fromCssColor("#485563"),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black12),
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
          ],
        ),
      ),
    );
  }
}
