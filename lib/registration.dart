import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studio_project1/statefull.dart';

void main(){
  runApp(MaterialApp(home: Registration(),));
}

class Registration extends StatefulWidget {

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
              children: [
          Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Text(
            "Registraion",
            style: TextStyle(
              fontSize: 40,
              color: Colors.red,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 70, right: 70),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    validator: (username) {
                      if (username!.isEmpty) {
                        return 'Invalid username';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: "Phone",
                      labelText: "Phone",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    validator: (username) {
                      if (username!.isEmpty) {
                        return 'Invalid Phone number';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
      Padding(
        padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            hintText: "Username",
            labelText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          validator: (username) {
            if (username!.isEmpty ||
                !username.contains('@') ||
                !username.contains('.')) {
              return 'Invalid username';
            } else {
              return null;
            }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
        child: TextFormField(
          obscureText: showpass,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  if (showpass) {
                    showpass = false;
                  } else {
                    showpass = true;
                  }
                });
              },
              icon: Icon(showpass == true
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            hintText: "Password",
            labelText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          validator: (password) {
            if (password!.isEmpty || password.length < 6) {
              return 'Invalid password';
            } else {
              return null;
            }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 50,top: 30,right: 70),
        child: TextFormField(
          obscureText: showpass,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  if (showpass) {
                    showpass = false;
                  } else {
                    showpass = true;
                  }
                });
              },
              icon: Icon(showpass == true
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            hintText: "confirm Password",
            labelText: "confirm Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          validator: (password) {
            if (password!.isEmpty || password.length < 6) {
              return 'Invalid password';
            } else {
              return null;
            }
          },
        ),
      ),
      SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 70),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[400],
                    ),
                    onPressed: () {
                      var valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => statefull()));
                      }
                    },
                    child: Text("create"),
                  ),
                ),
              ],
      )

      ),
    );
  }
}
