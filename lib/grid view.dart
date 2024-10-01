
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview()));
}
class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),children: [
        Container(child: Center(child: Text("1"),),color: Colors.green,),
        Container(child: Center(child: Text("2"),),color: Colors.red,),
        Container(child: Center(child: Text("3"),),color: Colors.blue,),
        Container(child: Center(child: Text("4"),),color: Colors.orange,),
        Container(child: Center(child: Text("5"),),color: Colors.yellow,),
        Container(child: Center(child: Text("6"),),color: Colors.purple,),
      ],)
    );
  }
}
