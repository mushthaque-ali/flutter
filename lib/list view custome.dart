import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListViewCustom()));
}

class ListViewCustom extends StatelessWidget {
  final List<String> name = ["amal", "arun", "anas", "akash", "sanu"];
  final List<String> phone = ["345464664", "367976857", "456586847", "6696758735", "57796346"];
  final List<String> image = ["assets/216-scaled-1.jpg", "assets/216-scaled-1.jpg", "assets/216-scaled-1.jpg", "assets/216-scaled-1.jpg", "assets/216-scaled-1.jpg"];
  final List<Color> color = [Colors.white, Colors.white, Colors.white, Colors.white, Colors.white];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                hintText: 'Ask Meta AI or Search...',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Card(
                  color: color[index],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                    title: Text(
                      name[index],
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    subtitle: Text(
                      "hey there i am using whatsapp....",
                      style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                    ),
                    // trailing: Wrap(
                    //   children: [
                    //     // Add any trailing widgets here if needed
                    //   ],
                    // ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
