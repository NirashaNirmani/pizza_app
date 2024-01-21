import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:iconsax/iconsax.dart';
import 'package:pizza_app/navigation_menu.dart';
import 'package:pizza_app/screens/authentication/signup.dart';
import 'package:pizza_app/screens/welcomescreen/welcomescreen.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'User Details',
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/user.png"),
                        height: 200,
                        width: 200,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ignore: unnecessary_const
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'N.G Nirasha Nirmani',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              SizedBox(
                                  height:
                                      8), // Adding some space between the texts
                              Text(
                                'nishinirmani@gmail.com',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                  height:
                                      8), // Adding some space between the texts
                              Text(
                                '0767171100',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                  height:
                                      8), // Adding some space between the texts
                              Text(
                                'Navinna Road, Hapugala, Galle',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SizedBox(
                        width: 350,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow[700]),
                            onPressed: () => Get.offAll(const WelcomeScreen()),
                            child: const Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Do you want to edit profile?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () => Get.to(const SignInScreen()),
                        child: const Text(
                          "Edit",
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
