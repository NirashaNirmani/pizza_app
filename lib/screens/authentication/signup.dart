import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza_app/navigation_menu.dart';
import 'package:pizza_app/screens/authentication/login.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _BookFlightPageState();
}

class _BookFlightPageState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w800,
                    color: Colors.yellow[700]),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: 'First Name',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              prefixIcon: const Icon(Icons.person_2_rounded),
                              prefixIconColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: 'Last Name',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              prefixIcon: const Icon(Icons.person_2_rounded),
                              prefixIconColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              prefixIcon: const Icon(Icons.phone_android),
                              prefixIconColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: 'Alternative Number',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              prefixIcon: const Icon(Icons.phone),
                              prefixIconColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 248, 248, 248)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: 'E-mail',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 248, 248, 248)),
                              prefixIcon: const Icon(Icons.mail),
                              prefixIconColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 245, 245, 245)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Iconsax.eye_slash),
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 248, 248, 248)),
                              prefixIcon: const Icon(Icons.mail),
                              prefixIconColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 245, 245, 245)),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow[700]),
                        onPressed: () => Get.to(const NavigationMenu()),
                        child: const Text("Sign Up")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already registered ?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () => Get.to(const LoginScreen()),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}