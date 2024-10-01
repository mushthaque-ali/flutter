import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountryListScreen(),
    );
  }
}

class CountryListScreen extends StatelessWidget {
  final List<Map<String, String>> countries = [
    {
      'name': 'Delhi',
      'image': 'assets/india.jpeg',
      'country': 'India',
      'population': 'population:331 million',
    },
    {
      'name': 'Finland',
      'image': 'assets/finland.jpeg',
      'country': 'Europe',
      'population': 'population:38 million',
    },
    {
      'name': 'London',
      'image': 'assets/london.jpeg',
      'country': 'UK',
      'population': 'population:83 million',
    },
    {
      'name': 'Vancouver',
      'image': 'assets/vancouver.jpeg',
      'country': 'Canada',
      'population': 'population:38 million',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
          'Cities Around the World',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final city = countries[index];
          return Card(
            color: Colors.orangeAccent,
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 180, // Set width for the image
                  height: 150, // Set height for the image
                  child: Image.asset(
                    city['image']!,
                    fit: BoxFit.cover, // Ensure the image covers the container
                  ),
                ),
                SizedBox(width: 20.0), // Space between the image and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city['name']!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10.0), // Space between title and subtitle
                      Text(
                        city['country']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        city['population']!,
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
