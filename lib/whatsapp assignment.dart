import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studio_project1/list%20view%20custome.dart';


void main() {
  runApp(MaterialApp(
    home: WhatsAppMainPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class WhatsAppMainPage extends StatefulWidget {
  const WhatsAppMainPage({super.key});

  @override
  State<WhatsAppMainPage> createState() => _WhatsAppMainPageState();
}

class _WhatsAppMainPageState extends State<WhatsAppMainPage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    ListViewCustom(), // Make sure this widget is defined in list_view_custom.dart
    Center(child: Text("Status")),
    Center(child: Text("New community")),
    Center(child: Text("Calls")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 20),
          child: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.green,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Icon(Icons.qr_code_scanner_outlined, color: Colors.green),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.camera_alt, color: Colors.green),
          ),
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          FontAwesomeIcons.message,
          color: Colors.teal,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal[700],
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_unread_chat_alt_rounded),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_outlined),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: "Communities",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Calls",
          ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
