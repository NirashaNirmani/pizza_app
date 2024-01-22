import 'package:flutter/material.dart';

import 'package:pizza_app/screens/authentication/login.dart';
import 'package:pizza_app/screens/authentication/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(244, 7, 10, 31),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // ignore: prefer_const_constructors
              Column(
                children: const <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Every meal would be better if it were PIZZA ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 214, 0, 1.0),
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/gif2.gif"))),
              ),
              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    // defining the shape
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Signup",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                  // creating the signup button
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    color: const Color.fromRGBO(255, 214, 0, 1.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w800,
                          fontSize: 25),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
