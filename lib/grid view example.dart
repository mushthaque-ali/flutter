import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: Gridviewextended(),));
}

class Gridviewextended extends StatefulWidget {
  const Gridviewextended({super.key});


  @override
  State<Gridviewextended> createState() => _GridviewextendState();
}

class _GridviewextendState extends State<Gridviewextended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Grid View Builder",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,mainAxisSpacing: 10,crossAxisSpacing: 10),
        children: [
          Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.car),
                Text("Car"),
              ],
            ),
            ),
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bicycle),
                Text("Bike"),
              ],
            ),
          ),

          Container(
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_boat),
                Text("Boat"),
              ],
            ),
          ),


          Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bus),
                Text("Bus"),
              ],
            ),
          ),

          Container(
            color: Colors.brown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.train),
                Text("Train"),
              ],
            ),
          ),

          Container(
            color: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_walk),
                Text("Walk"),
              ],
            ),
          ),
          Container(
            color: Colors.white24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.contact_mail),
                Text("Contact"),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.duo),
                Text("Duo"),
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.hourglass_bottom),
                Text("Hour"),
              ],
            ),
          ),
          Container(
            color: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mobile_friendly),
                Text("Mobile"),
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.message),
                Text("Message"),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.key),
                Text("Key"),
              ],
            ),
          ),
          Container(
            color: Colors.lime,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wifi),
                Text("Wifi"),
              ],
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bluetooth),
                Text("Bluetooth"),
              ],
            ),
          ),
          Container(
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.smile),
                Text("Smile"),
              ],
            ),
          ),

        ],),

    );
  }
}
