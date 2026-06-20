import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:court_booking/views/order_summary.dart';

class PackageDuration extends StatelessWidget {
  const PackageDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Package Duration',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 10),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderSummary())
                );
              },
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "1 Hour",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 50.000",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Perpect For Training",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                        Spacer(),
                        Text(
                          "per Session",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10);
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
