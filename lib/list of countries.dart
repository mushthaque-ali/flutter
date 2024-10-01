import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listcountries(),));
}

class Listcountries extends StatelessWidget {

  var place=["New delhi","Finland","London","Vancouver",];

  var countrie=["India","Europe","UK","Canada"];

  var population=["population:32.9 milli","population:5.54 milli","population:8.8 milli","population:2.6 milli"];

  var image=["assets/india.jpeg","assets/finland.jpeg","assets/london.jpeg","assets/vancouver.jpeg"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cities Around World",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
          itemBuilder: (context,index) {
            return Card(
              color: Colors.orange,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(image[index]),
                ),
                title: Text(place[index]),
                subtitle: Text(countrie[index]),
                trailing: Text(population[index]),
              ),
            );

          },itemCount: place.length,
      ),
    );
  }
  }