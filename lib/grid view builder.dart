import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewbuilder(),));
}

class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}


class _GridviewbuilderState extends State<Gridviewbuilder> {
  var color=[Colors.red,Colors.yellow,Colors.greenAccent,Colors.blue,Colors.purple,Colors.pink];
  var iconss=
      [Icons.account_balance,
      Icons.add_alert,
      Icons.access_alarms_rounded,
      Icons.add_circle,
      Icons.ac_unit,
      Icons.insert_comment_rounded];
  var data=[
    "account_balance",
    "add_alert",
    "access_alarms_rounded",
    "add_circle",
    "ac_unit",
    "insert_comment_rounded"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10
      ),
          itemBuilder: (context,index){
        return Container(color: color[index],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconss[index]),
            Text(data[index]),
          ],
        ),);
          },itemCount: iconss.length,
      ),
    );
  }
}
