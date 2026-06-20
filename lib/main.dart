import 'package:flutter/material.dart';
import 'package:court_booking/views/boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Court Booking',
      debugShowCheckedModeBanner: false,
      home: BoardingPage(),
    );
  }
}