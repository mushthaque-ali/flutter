import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list view custome.dart';
import 'listbuild.dart';
import 'simple contact list.dart';

void main(){
  runApp(MaterialApp(home: Taabeg()
    ,));
}

class Taabeg extends StatefulWidget{
  @override
  State<Taabeg> createState() => _tabbarState();

}

class _tabbarState  extends State<Taabeg>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child:Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,
          title: Text("WHATSAPP"),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("INVITE")),
                PopupMenuItem(child: Text("REFRESH")),
                PopupMenuItem(child: Text("LOGOUT")),

              ];
            }),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.blue,
            dividerColor: Colors.white,
            indicatorColor: Colors.yellow,
            unselectedLabelColor: Colors.black,


            tabs: [
              Tab(child: Icon(Icons.camera_alt),),
              Tab(child: Text("chat"),),
              Tab(child: Text("status"),),
              Tab(child: Text("call"),),
            ],),
        ),
        body: TabBarView(children: [
          Center(child: Icon(Icons.camera_alt),),
          Listbuilder(),
          Listviewcustom(),
          Listbuildercontact()


        ],),
      ),
    );
  }

}