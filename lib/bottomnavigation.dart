import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Bottomnavigation(),));
}

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int index=1;
  var screen=[
    Text("Profile"),
    Text("Chat"),
    Text("Call"),
    Text("Contact"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          //type: BottomNavigationBarType.fixed,
           type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.yellow,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Profile",backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "Chat",backgroundColor: Colors.red),
            BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Call",backgroundColor: Colors.orange),
            BottomNavigationBarItem(icon: Icon(Icons.contact_page,),label: "Contact",backgroundColor: Colors.blue),

          ]),
      body: Center(child: screen[index],),
    );
  }
}