import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewextend(),));
}

class Gridviewextend extends StatefulWidget {
  const Gridviewextend({super.key});


  @override
  State<Gridviewextend> createState() => _GridviewextendState();
}

class _GridviewextendState extends State<Gridviewextend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,mainAxisSpacing: 10,crossAxisSpacing: 10),
      children: [
        Container(child: Center(child: Text("1"),),color: Colors.blue,),
        Container(child: Center(child: Text("2"),),color: Colors.green,),
        Container(child: Center(child: Text("3"),),color: Colors.yellow,),
        Container(child: Center(child: Text("4"),),color: Colors.red,),
        Container(child: Center(child: Text("5"),),color: Colors.greenAccent,),
        Container(child: Center(child: Text("6"),),color: Colors.pink,),





      ],),

    );
  }
}
