import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Hotelui(),));
}


class Hotelui extends StatelessWidget {
  const Hotelui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.update_outlined),
              title: Text("Update"),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180.0),
        child: AppBar(
          title: const Text(""),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Type Your Location",
                    style: TextStyle(fontSize: 30, color: Colors.green,fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for something",
                        hintStyle: TextStyle(color: Colors.grey[200]),
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.search, color: Colors.black),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.camera_alt, color: Colors.black),
                          onPressed: () {},
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategoryIcon(Icons.hotel, Colors.red),
                  _buildCategoryIcon(Icons.restaurant, Colors.blue),
                  _buildCategoryIcon(Icons.local_cafe, Colors.orange),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Column(
                children: [
                  _buildHotelCard(
                    imagePath: 'assets/finland.jpeg',
                    title: 'Awesome Room near Boddha',
                    location: 'Boddha, Kathmandu',
                    price: '\$40',
                  ),
                  const SizedBox(height: 20),
                  _buildHotelCard(
                    imagePath: 'assets/london.jpeg', // Add your other images
                    title: 'Cozy Room in Downtown',
                    location: 'Downtown, Kathmandu',
                    price: '\$55',
                  ),
                  const SizedBox(height: 20),
                  _buildHotelCard(
                    imagePath: 'assets/india.jpeg', // Add your other images
                    title: 'Luxury Suite with a View',
                    location: 'Thamel, Kathmandu',
                    price: '\$80',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryIcon(IconData icon, Color color) {
    return Container(
      width: 70,
      height: 70,
      color: color,
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }

  Widget _buildHotelCard({
    required String imagePath,
    required String title,
    required String location,
    required String price,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star_half, color: Colors.green),
                      ],
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
