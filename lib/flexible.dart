import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Flexibleg(),));
}

class Flexibleg extends StatefulWidget {
  const Flexibleg({super.key});

  @override
  State<Flexibleg> createState() => _FlexiblegState();
}

class _FlexiblegState extends State<Flexibleg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
                color: Colors.red,
              ),
          ),Flexible(
            flex: 4,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          )
            ],
          ),
    );
  }
}
