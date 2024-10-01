import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Alertboxeg(),));
}

class Alertboxeg extends StatefulWidget {
  const Alertboxeg({super.key});

  @override
  State<Alertboxeg> createState() => _AlertboxegState();
}

class _AlertboxegState extends State<Alertboxeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Exit....."),
            content: Text("do you want Exit?"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              },child: Text("Yes")),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              },child: Text("No")),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              },child: Text("Cancel"),)
            ],
          );
        });
      },child: Text("Alertbox")),),
    );
  }
}
