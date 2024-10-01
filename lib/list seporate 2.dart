import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listseperator()));
}

class Listseperator extends StatelessWidget{
  var month=["jan","feb","mar","apr","may","june","july","aug","sep","oct","nov","dec"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: Text(month[index]),
        );
    },
    separatorBuilder: (context,index) {
      if (index % 3 == 0) {
        return Card(
          child: Container(color: Colors.red,
            child: Text("Advertaisment"),),
        );
      }
      else{
        return SizedBox();
    }
  },  itemCount: 12),
    );
  }
}