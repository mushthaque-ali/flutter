import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studio_project1/Clipperwidget.dart';
import 'package:studio_project1/customewidex.dart';

void main(){
  runApp(MaterialApp(home: Customwidex1(),));
}

class Customwidex1 extends StatelessWidget {
  const Customwidex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Customewidex(india: Image(image: AssetImage("assets/india.jpeg")),
            like: Icon(Icons.favorite),
            capital: Text("capital"),
            delhi: Text("delhi"),
            onpress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Clppereg()));
            }),
      ),
    );
  }
}
