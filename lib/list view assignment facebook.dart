import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listbuilder(),
  ));
}

class Listbuilder extends StatelessWidget {
  var firstname = ["F", "A", "I", "A", "A", "A", "M", "F"];
  var name = [
    "Facebook",
    "A10 NETWORKS INC",
    "Intel Corp",
    "Advanced Micro Device Inc",
    "Apple Inc",
    "Amazon.com Inc",
    "Microsoft Corporation",
    "Facebook"
  ];

  var lasttext = [
    "333.1",
    "18.34",
    "56.56",
    "33.43",
    "132.98",
    "3545.44",
    "284.51",
    "333.3"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "List View Builder",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(firstname[index]),
                  backgroundColor: Color.fromARGB(255, 2, 105, 196),
                ),
                title: Text(name[index]),
                trailing: Text(("\$" + lasttext[index])),
              ));
        },
        itemCount: name.length,
      ),
    );
  }
}