import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Stackeg(),));
}

class Stackeg extends StatefulWidget {
  const Stackeg({super.key});

  @override
  State<Stackeg> createState() => _StackegState();
}

class _StackegState extends State<Stackeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: double.infinity,
            width: double.infinity,),
          Positioned(height: 600,width: 600,top: 200,
          child: Center(
            child: Container(
              color: Colors.green,
            ),
          ),),
          Positioned(height: 200,width: 200,right: 150,top: 100,
            child: Center(
              child: Container(
                color: Colors.yellow,
              ),
            ),)



        ],
      ),
    );
  }
}
