import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(244, 7, 10, 31),
        leading: Container(
          // height: 10,
          width: 10,
          padding: const EdgeInsets.all(5),
          color: const Color.fromARGB(255, 206, 195, 192).withOpacity(0.5),
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ),
        actions: [
          const Text(
            "Hello User !  ",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/image1.png'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 30,
            right: 30,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Material Category',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  TextButton(
                      child: const Text("View All",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      onPressed: () {}),
                ],
              ),
              SizedBox(
                height: 50, // Adjust the height as needed
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, value) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        elevatedButton(1, "Breakfast", ()),
                        elevatedButton(2, "Lunch", ()),
                        elevatedButton(3, "Dinner", ()),
                        elevatedButton(4, "Short Eats", ()),
                        elevatedButton(4, "Pizza Special", ()),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      populerDestination(
                          'assets/pizza2.jpg', 'Lorem ipsum', 'Lorem Ipsum '),
                      populerDestination(
                          'assets/pizza2.jpg', 'Lorem Ipsum ', 'Lorem ipsum'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      populerDestination(
                          'assets/pizza2.jpg', 'Lorem ipsum', 'Lorem Ipsum '),
                      populerDestination(
                          'assets/pizza2.jpg', 'Lorem Ipsum ', 'Lorem ipsum'),
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
    );
  }

  Widget elevatedButton(int value, String text, onPressed) => Row(
        children: [
          ElevatedButton(
              onPressed: () => Get.to(onPressed),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  foregroundColor: Colors.white),
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      );

  Widget populerDestination(String img, String city, String country) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(6)),
      height: 260,
      width: 165,
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
    );
  }
}
