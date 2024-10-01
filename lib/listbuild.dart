import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Listbuilder(),));
}
class Listbuilder extends StatelessWidget {
  var name=["amal","arun","anu","chinnu"];
  var phone=["12345432","3425516","14526435","83562536","5347182"];
  var image=["assets/Github-Octicons-Device-camera-16.512 (1).png","assets/pexels-eberhardgross-1624496.jpg","assets/pexels-eberhardgross-1624496.jpg","assets/216-scaled-1.jpg","assets/216-scaled-1.jpg"];
  var color=[Colors.red,Colors.yellow,Colors.green,Colors.pink,Colors.cyan];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView.builder(itemBuilder: (context,index){
        return Card(
        color: color[index],
        child:ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
    title: Text(name[index]),
    subtitle: Text(phone[index]),
    trailing: Icon(Icons.call),
    ),
    );
    },itemCount: name.length,),
    );
  }
}
