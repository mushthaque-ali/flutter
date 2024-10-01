import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomScrollVieww(),
    debugShowCheckedModeBanner: false,
  ));
}

class CustomScrollVieww extends StatefulWidget {
  const CustomScrollVieww({super.key});

  @override
  State<CustomScrollVieww> createState() => _CustomScrollViewwState();
}

class _CustomScrollViewwState extends State<CustomScrollVieww> {
  var phone = [
    "9487546511",
    "8956235645",
    "9595646484",
    "5454565685",
    "5879568459"
  ];

  var data = [
    "account_balance",
    "add_alert",
    "access_alarams_round",
    "add_circle",
    "ac_unit",
    "insert_comment_ronded"
  ];

  var image = [
    "assets/finland.jpeg",
    "assets/havasu falls.jpg",
    "assets/india.jpeg",
    "assets/london.jpeg",
    "assets/portugal.jpg",
  ];

  var color = [
    Colors.lightGreenAccent,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.grey
  ];
  var icons = [
    Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.insert_comment_rounded
  ];

  var name = ["nishu", "mushthaq", "midhlaj", "shahanad", "naeem"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Custome Scroll View"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search something...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            expandedHeight: 140,
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.pinkAccent,
              height: 50,
              child: Text(
                "Sliver grid",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  color: color[index],
                  child: ListTile(
                    leading: Image(image: AssetImage(image[index])),
                    title: Text(name[index]),
                    subtitle: Text(phone[index]),
                  ),
                );
              }, childCount: name.length)),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.pinkAccent,
              height: 50,
              child: Text(
                "Sliver grid",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  color: color[index],
                  child: Column(
                    children: [Text(data[index]), Icon(Icons.roundabout_left)],
                  ),
                );
              }, childCount: data.length),
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 2,mainAxisSpacing: 3,))
        ],
      ),
    );
  }
}