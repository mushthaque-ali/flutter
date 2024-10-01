import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Stackprofile(),));
}

class Stackprofile extends StatefulWidget {
  const Stackprofile({super.key});

  @override
  State<Stackprofile> createState() => _StackprofileState();
}

class _StackprofileState extends State<Stackprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Text(
                "Mishal Haneef",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Container(
              height: 250,
              width: double.infinity, // Make container full width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.lightBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Adjust padding as needed
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10), // Space between texts
                    Text(
                      "This is some additional text.",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 200, // Adjust position as needed
            left: (MediaQuery.of(context).size.width - 150) / 2, // Center horizontally
            child: ClipOval(
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/216-scaled-1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 370, // Position below the image
            left: (MediaQuery.of(context).size.width - 150) / 2, // Center horizontally
            child: Text(
              "Additional Information",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
