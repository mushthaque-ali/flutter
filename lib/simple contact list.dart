import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listbuildercontact(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listbuildercontact extends StatelessWidget {
  var first = ["J", "B", "E", "A", "A", "W", "E", "O","M"];
  var name = [
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
    "Wakara Zimbu",
    "Emaechi Chinedu",
    "Osaretin Igbinomwanhia",
  ];

  var phone = [
    "9874561230",
    "4563782084",
    "6457264792",
    "4667329857",
    "9874561230",
    "6574728384",
    "3648927473",
    "2473645738",
    "763849927"
  ];

  var colorr = [
    Colors.blue,
    Colors.purple,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Simple Contact List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  foregroundColor: Colors.white,
                  backgroundColor: colorr[index],
                ),
                title: Text(name[index]),
                trailing: Icon(Icons.navigate_next),
                subtitle: Text(phone[index]),
              ));
        },
        itemCount: name.length,
      ),
    );
  }
}