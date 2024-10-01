import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Clppereg(),));
}

class Clppereg extends StatefulWidget {
  const Clppereg({super.key});

  @override
  State<Clppereg> createState() => _ClpperegState();
}

class _ClpperegState extends State<Clppereg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(
            child: Container(
              child: Image(image: AssetImage("assets/india.jpeg"),),
            ),
          ),
          ClipRRect(
            borderRadius:BorderRadius.circular(100),
            child: Container(
              child: Image(image: AssetImage("assets/india.jpeg"),),
            ),
          ),
          ClipOval(
            child: Image(image: NetworkImage("https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?cs=srgb&dl=pexels-padrinan-255379.jpg&fm=jpg"),),
          )
        ],
      ),
    );
  }
}
