import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_app/navigation_menu.dart';

class ShopDetails extends StatelessWidget {
  const ShopDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // Set your preferred height
        child: AppBar(
          backgroundColor: const Color.fromARGB(244, 7, 10, 31),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 30, top: 8),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        iconSize: 28,
                        color: Colors.white.withOpacity(0.5),
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 28,
                        color: Colors.white.withOpacity(0.5),
                        icon: const Icon(Icons.star),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/image3.png"),
                        height: 250,
                        width: 200,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Lorem ipsum \ndolor',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Serif"),
                          ),
                        ),
                        TextButton(
                            child: const Text("\$12.59",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25)),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem ipsum dolor",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 230,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(244, 7, 10, 31)
                                  .withOpacity(0.3)),
                          child: const Text(
                            'Pizza (/ˈpiːtsə/ PEET-sə, Italian: [ˈpittsa]; Neapolitan: [ˈpittsə]) is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, vegetables, meat, etc.)',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Serif',
                              color: Color.fromARGB(255, 247, 244, 244),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.yellow[700]),
                          onPressed: () => Get.to(const NavigationMenu()),
                          child: const Text(
                            "Order Now",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
