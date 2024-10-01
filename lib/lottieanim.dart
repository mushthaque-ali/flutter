import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: Lottieg(),));
}

class Lottieg extends StatefulWidget {
  const Lottieg({super.key});


  @override
  State<Lottieg> createState() => _LottiegState();
}

class _LottiegState extends State<Lottieg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/anim/Animation - 1725863648024.json"),
      ),
    );
  }
}
