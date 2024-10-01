import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Mclist(),));
}

class Mclist extends StatelessWidget {

  var name=["mushthaque","mc"];

  var phone=["7592007789","8756386"];

  var color=[Colors.blue,Colors.green];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.yellow,),
            title:Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.person),
          )


        );
    }, itemCount: name.length,),

    );
  }
}
