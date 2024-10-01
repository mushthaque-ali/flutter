import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studio_project1/Clipperwidget.dart';
import 'package:studio_project1/customewidget.dart';

void main(){
  runApp(MaterialApp(home: Customeg(),));
}

class Customeg extends StatelessWidget {
  const Customeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Custmwidgeteg(img: Image(image: AssetImage("assets/india.jpeg")),
            title: Text("data"),
            iconss: Icon(Icons.access_alarms_rounded),onpress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Clppereg()));
            }),
      ),
    );
  }
}
