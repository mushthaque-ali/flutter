import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listseparate()));
}
class Listseparate extends StatelessWidget {
  var name=["arun","midhun","rahul","sooraj"];
  var color=[Colors.yellow,Colors.red,Colors.blue,Colors.green];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("List separated"),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(color: color[index],
    child: ListTile(
    title: Text(name[index]),
    ),
    );
    },
    separatorBuilder: (context,index){
        return Divider(
        thickness: 5,
        color: Colors.red,
        );
    },
    itemCount: name.length),

    );
  }
}