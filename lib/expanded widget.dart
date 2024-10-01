import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expandedeg(),));
}

class Expandedeg extends StatefulWidget {
  const Expandedeg({super.key});

  @override
  State<Expandedeg> createState() => _ExpandedState();
}

class _ExpandedState extends State<Expandedeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ExpansionTile(title: Text("light color"),
        children: [
          ListTile(leading: CircleAvatar(backgroundColor: Colors.limeAccent[100],),),
          ListTile(leading: CircleAvatar(backgroundColor: Colors.redAccent[100],),),
          ListTile(leading: CircleAvatar(backgroundColor: Colors.greenAccent[100],),),
          ListTile(leading: CircleAvatar(backgroundColor: Colors.blueAccent[100],),),


        ],
        ),
        ExpansionTile(title: Text("Dark color"),
        children: [
          ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),),
          ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),),
          ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),),
          ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),),



        ],)

      ],),
    );
  }
}
