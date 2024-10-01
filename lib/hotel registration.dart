import 'package:flutter/material.dart';
import 'package:studio_project1/hotel%20login.dart';
import 'package:studio_project1/splashscreen.dart';

import 'hotelui.dart';

class HotelRegistration extends StatefulWidget {
  const HotelRegistration({super.key});

  @override
  State<HotelRegistration> createState() => _HotelRegistrationState();
}

class _HotelRegistrationState extends State<HotelRegistration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showPassword = true;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/white.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Text(
                    "Hotel Registration",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      labelText: "Enter your Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (name) {
                      if (name == null || name.isEmpty) {
                        return "Please enter your full name";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
                  child: TextFormField(
                    obscureText: _showPassword,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Enter a Strong Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(_showPassword ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
                    validator: (passwordValue) {
                      if (passwordValue == null || passwordValue.isEmpty || passwordValue.length < 6) {
                        return "Please enter a valid password with at least 6 characters";
                      }
                      _password = passwordValue;
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
                  child: TextFormField(
                    obscureText: _showPassword,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      labelText: "Confirm Your Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(_showPassword ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
                    validator: (confirmPassword) {
                      if (confirmPassword == null || confirmPassword.isEmpty || confirmPassword.length < 6) {
                        return "Please confirm your password";
                      }
                      if (confirmPassword != _password) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    foregroundColor: Colors.black38,
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hotelui()),
                      );
                    }
                  },
                  child: Text("Register"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Hotellogin()),
                      );
                    },
                    child: Text("Already have an Account? Login"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
