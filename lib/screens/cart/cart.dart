import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 20),
          child: Container(
            height: 900,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/pizza2.jpg",
                    ),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 247, 249, 250).withOpacity(0.2),
                  const Color.fromARGB(244, 11, 19, 73)
                ], begin: Alignment.topCenter)),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 300,
                          margin: const EdgeInsets.only(
                            top: 300,
                            left: 40,
                            right: 40,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: const Text(
                            'Lorem Ipsum\nDolor Sit Amet',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Lorem Ipsum Dolor Sit Amet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              populerDestination('assets/pizza2.jpg',
                                  'Lorem ipsum', 'Lorem Ipsum '),
                              populerDestination('assets/pizza2.jpg',
                                  'Lorem Ipsum ', 'Lorem ipsum'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              populerDestination('assets/pizza2.jpg',
                                  'Lorem ipsum', 'Lorem Ipsum '),
                              populerDestination('assets/pizza2.jpg',
                                  'Lorem Ipsum ', 'Lorem ipsum'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget populerDestination(String img, String city, String country) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(6)),
        height: 260,
        width: 170,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ClipRRect(
                // borderRadius: BorderRadius.circular(20),
                child: Image.asset(
              img,
              fit: BoxFit.cover,
              height: 140,
              width: 150,
            )),
            const SizedBox(height: 2),
            Text(
              country,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              city,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 209, 203, 203)),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 209, 108, 14),
                      Color.fromARGB(255, 230, 64, 13),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(0, 231, 12, 12),
                    onPrimary: Colors.white, // Text color
                  ),
                  child: const Text('Order'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
