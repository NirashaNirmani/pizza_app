import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza_app/navigation_menu.dart';
import 'package:pizza_app/screens/authentication/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Login',
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
                        child: const Text("Login",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.black))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an acoount ?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () => Get.to(const SignInScreen()),
                        child: const Text(
                          "Register",
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
