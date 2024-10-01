import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Drawnavigation(),));
}

class Drawnavigation extends StatefulWidget {
  const Drawnavigation({super.key});

  @override
  State<Drawnavigation> createState() => _DrawnavigationState();
}

class _DrawnavigationState extends State<Drawnavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("mushthaq"),
                accountEmail: Text("mushthaqueali@gmail.com")
            ,currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/216-scaled-1.jpg"),
                ),
              otherAccountsPictures: [
                /**/
                CircleAvatar(
                  backgroundImage: AssetImage("assets/216-scaled-1.jpg")),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/216-scaled-1.jpg"),
                ),
              ],
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/finland.jpeg"),fit: BoxFit.fill)),

              ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Update"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("send"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("drafts"),
            ),
          ],
        ),
      ),
      body: Center(child: Text("flutter"),),
    );
  }
}
