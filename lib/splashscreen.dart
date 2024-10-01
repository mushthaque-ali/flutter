import 'dart:async';

import 'package:flutter/material.dart';
import 'package:studio_project1/hotel%20registration.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false, // Optional: Hide debug banner for splash screen
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HotelRegistration after 5 seconds
    Timer(Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HotelRegistration()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Github-Octicons-Device-camera-16.512 (1).png"),
            fit: BoxFit.cover, // Changed to cover for better fit
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flutter_dash_outlined,
              size: 50,
              color: Colors.orange,
            ),
            SizedBox(height: 20), // Added spacing
            Image.asset(
              "assets/T and T.jpeg",
              height: 50,
              width: 50,
            ),
            SizedBox(height: 20), // Added spacing
            Text(
              "Flutter",
              style: TextStyle(
                fontSize: 100,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
