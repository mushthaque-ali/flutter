import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CreditCard(),
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [Colors.black, Colors.redAccent[700]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 20,
            top: 20,
            child: Image.asset(
              'assets/CSBBANK.NS_BIG-25254ded.png',
              color: Colors.white,
              width: 150,
            ),
          ),
          Positioned(
            top: 90,
            left: 25,
            child: Text(
              '6522  3200  2345  9876',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Positioned(
            right: 18,
            bottom: 20,
            child: Image.asset(
              'assets/header-logo.png',
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20,
            top: 30,
            child: Image.asset(
              'assets/chip.png',
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            top: 60,
            child: Image.asset(
              'assets/47764103b8c89b2be437.png',
              color: Colors.white,
              width: 50,
              height: 30,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 20,
            child: Text(
              'MUSHTHAQUE ALI NP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 140,
            child: Text(
              '08/23',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            right: 187,
            child: Text(
              'Valid',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          Positioned(
            bottom: 38,
            right: 186,
            child: Text(
              'Upto',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          Positioned(
            bottom: 9,
            right: 30,
            child: Text(
              'Platinum',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}