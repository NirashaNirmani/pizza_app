//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza_app/screens/shop/shop_page.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      appBar: AppBar(
        leadingWidth: 10,
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(244, 7, 10, 31),
        leading: SizedBox(
          width: 20,
          height: 20,
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: IconButton(
              icon: const Icon(Icons.search),
              color: Colors.amberAccent,
              iconSize: 30,
              onPressed: () {
                // Implement search functionality
              },
            ),
          ),
        ),
        actions: [
          const Text(
            "Hello User !  ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 25),
            child: IconButton(
              icon: const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/image1.png'),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      //backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity, // Set width to fill available space
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/pizza2.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 102, 103, 104)
                            .withOpacity(0.2),
                        const Color.fromARGB(244, 158, 158, 158),
                      ],
                      begin: Alignment.centerLeft,
                    ),
                  ),
                  child: const Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, right: 20),
                          child: Text(
                            'Juisy And\nSavory Steak',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Text(
                            'Lorem ipsum dolor',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                'only',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Meal Category",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  // TextButton(
                  //     child: const Text("View All",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 15)),
                  //     onPressed: () {}),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50, // Adjust the height as needed
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  // itemCount: 5,
                  itemBuilder: (context, value) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        elevatedButton(1, "Breakfast"),
                        elevatedButton(2, "Lunch"),
                        elevatedButton(3, "Dinner"),
                        elevatedButton(4, "Short Eats"),
                        elevatedButton(4, "Pizza Special"),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Popular",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),

              SizedBox(
                height: 320, // Adjust the height as needed
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, value) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        populer('assets/1img.jpg', 'Lorem ipsum',
                            'Lorem Ipsum dolor sal amet', 3.5),
                        const SizedBox(
                          width: 10,
                        ),
                        populer('assets/2img.jpg', 'Lorem Ipsum dolor sal amet',
                            'Lorem ipsum', 4.5),
                        const SizedBox(
                          width: 10,
                        ),
                        populer('assets/2img.jpg', 'Lorem Ipsum dolor sal amet',
                            'Lorem ipsum', 4),
                        const SizedBox(
                          width: 10,
                        ),
                        populer('assets/2img.jpg', 'Lorem Ipsum dolor sal amet',
                            'Lorem ipsum', 5),
                        const SizedBox(
                          width: 10,
                        ),
                        populer('assets/2img.jpg', 'Lorem Ipsum dolor sal amet',
                            'Lorem ipsum', 1),
                        const SizedBox(
                          width: 10,
                        ),
                        populer('assets/2img.jpg', 'Lorem Ipsum dolor sal amet',
                            'Lorem ipsum', 2.5),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     populerDestination('assets/1img.jpg', 'Lorem ipsum',
              //         'Lorem Ipsum dolor sal amet', 3.5),
              //     populerDestination('assets/2img.jpg',
              //         'Lorem Ipsum dolor sal amet', 'Lorem ipsum', 4.5),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget elevatedButton(int value, String text) => Row(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.black.withOpacity(0.5),
                  foregroundColor: Colors.white),
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(
            width: 20,
          ),
        ],
      );

  Widget populer(
    String img,
    String name,
    String dep,
    double rating,
  ) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(6)),
      height: 280,
      width: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                height: 140,
                width: 160,
              )),
          const SizedBox(height: 2),
          Text(
            dep,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 26, 25, 25)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBarIndicator(
                rating: rating,
                itemSize: 15,
                unratedColor: Colors.white,
                itemBuilder: (_, __) => const Icon(
                  Iconsax.star1,
                  color: Colors.amber,
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => Get.to(const ShopDetails()),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      backgroundColor: Colors.black.withOpacity(0.5),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Buy'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
