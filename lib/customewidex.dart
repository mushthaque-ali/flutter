import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customewidex extends StatelessWidget {
  final Image india;
  final Icon  like;
  final Text capital;
  final Text delhi;
  VoidCallback onpress;
  Customewidex({required this.india,required this.like,required this.capital,required this.delhi,required this.onpress});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(child: Image(image: AssetImage("assets/india.jpeg"),)),
          ),
          SizedBox(height: 10), // Adds space between containers
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(child: Icon(Icons.favorite)),
          ),
          SizedBox(height: 10,),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text("capital",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text("delhi",style: TextStyle(fontWeight: FontWeight.bold,),),
            ),
          )
        ],
      ),
    );
  }
}
