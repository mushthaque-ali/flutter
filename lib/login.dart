import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                "Loginpage",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "username",
                    labelText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility),
                    hintText: "password",
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[400]),
                  onPressed: () {},
                  child: Text("submit")),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Not a user ? Create an account"),
            ),
          ],
        ),
      ),
    );
  }
}