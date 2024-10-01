import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listcustmlist()));
}
class Listcustmlist extends StatelessWidget{

  var name=["nimesh","shahnad"];

  var phone=["7845989","99999999999"];

  var image=["assets/216-scaled-1.jpg","assets/216-scaled-1.jpg"];

  var color=[Colors.yellow,Colors.blue];

  @override
  Widget build(BuildContext contex){
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
        List.generate(name.length, (index){
          return Card(
            color: (color[index]),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
          ),
      );
  })

    )),
    );
  }
}