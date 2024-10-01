import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> with SingleTickerProviderStateMixin {

  int index = 0; // Start with the first item
  late TabController _tabController;

  final List<String> names = ["MY ACCOUNT", "DASHBOARD", "ABOUT", "LOGOUT"];
  final List<Icon> iconlist = [
    Icon(Icons.person),
    Icon(Icons.dashboard),
    Icon(Icons.info),
    Icon(Icons.logout)
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        index = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Row(
                children: [
                  Icon(Icons.menu, color: Colors.white, size: 30), // Add your icon here
                  SizedBox(width: 8), // Space between icon and text
                  Center(
                    child: Text(
                    "PROFILE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 60,
              child: Center(
                child: Text(
                "EDIT YOUR PROFILE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: MediaQuery.of(context).size.width / 2 - 75,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/T and T.jpeg"),
                radius: 75,
              ),
            ),
            Positioned(
              top: 300,
              left: MediaQuery.of(context).size.width / 2 - 75,
              child: Center(
                child: Text(
                  "PROFILE T&T",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 46),
                      child: Card(
                        child: ListTile(
                          title: Text(names[index]),
                          leading: iconlist[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
              _tabController.index = tapindex;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            BottomNavigationBarItem(icon: Icon(Icons.switch_account), label: "Account"),
          ],
        ),
      ),
    );
  }
}
