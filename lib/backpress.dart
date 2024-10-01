import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Backpress extends StatefulWidget {
  const Backpress({super.key});

  @override
  State<Backpress> createState() => _BackpressState();
}

class _BackpressState extends State<Backpress> {
  Future<bool>showdailopop()async{
    return await showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("Exit...!"),
      content: Text("Do you Want to Exit?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop(true);
        },child: Text("yes")),
        TextButton(onPressed: (){
          Navigator.of(context).pop(false);
        },child: Text("No")),
      ],
    );
  });

  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: showdailopop,
        child: Scaffold());
  }
}
