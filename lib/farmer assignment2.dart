import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Farmerconst extends StatelessWidget {
  const Farmerconst({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide(color: Colors.green),
                  ),
                  child: Text(
                    'VEGETABLES',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide(color: Colors.green),
                  ),
                  child: Text(
                    'FRUITS',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide(color: Colors.green),
                  ),
                  child: Text(
                    'EXOTIC CUTS',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CarouselSlider(
            items: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/havasu falls.jpg', fit: BoxFit.cover),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/trondheim.jpg', fit: BoxFit.cover),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.5,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.access_time, color: Colors.black),
                      Text("30 mins policy"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.receipt_long, color: Colors.black),
                      Text("Traceability"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.home, color: Colors.black),
                      Text("Local Surrounding"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shop by Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 400,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 50.0,
              mainAxisSpacing: 50.0,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/india.jpeg', fit: BoxFit.cover),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/finland.jpeg', fit: BoxFit.cover),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/london.jpeg', fit: BoxFit.cover),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/portugal.jpg', fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}