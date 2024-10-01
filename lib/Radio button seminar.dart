import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Radiobuttoneg()));
}

class Radiobuttoneg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "RADIO BUTTON EXAMPLE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MyRadioButton(),
      ),
    );
  }
}

class MyRadioButton extends StatefulWidget {
  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "SELECT GENDER",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20), // Space between title and options
        Row(
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text('MALE'),
          ],
        ),
        Row(
          children: <Widget>[
            Radio(
              value: 2,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text('FEMALE'),
          ],
        ),
      ],
    );
  }
}
