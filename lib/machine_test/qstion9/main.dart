
import 'package:flutter/material.dart';

class Fsplash extends StatelessWidget {
  const Fsplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("WELCOME....",style: TextStyle(
            fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),),
      ),
    );
  }
}
