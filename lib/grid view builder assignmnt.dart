import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: Gridviewex(),));
}


class Gridviewex extends StatefulWidget {
  const Gridviewex({super.key});

  @override
  State<Gridviewex> createState() => _GridviewexState();
}

class _GridviewexState extends State<Gridviewex> {
  var color=[Colors.yellow,Colors.yellow,Colors.yellow,Colors.yellow,Colors.yellow,Colors.yellow,Colors.yellow,Colors.yellow];
  var iconss=[
    Icons.person,
    FontAwesomeIcons.car,
    Icons.calendar_today,
    Icons.share,
    Icons.help,
    Icons.call,
    Icons.settings,
    Icons.logout,
  ];
  var data=[
    "My profile",
    "Book a Cab",
    "Booking Schedule",
    "Track Your Cab",
    "Help & Feedback",
    "Call To Transpor",
    "Settings",
    "Log-out",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Menu",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10
      ),
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 120),
                Center(
                  child: Card(
                      color: Colors.white,
                    child: Center(
                      child: Icon(iconss[index],
                      color: Colors.yellow,
                     
                        size: 40,
                      ),
                    ),
                
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)), ),
                ),
                Text(
                  data[index],
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
          },itemCount: data.length,
      ),
    );
  }
}
