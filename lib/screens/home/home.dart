import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 0, 13, 84),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blueAccent,
        leading: Container(
          height: 10,
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/pizza.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Positioned(
                  top: 20,
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.blue.withOpacity(0.5),
                            const Color.fromARGB(255, 175, 172, 175)
                                .withOpacity(0.5),
                          ],
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meal Category",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  populerDestination('assets/1img.jpg', 'Lorem ipsum',
                      'Lorem Ipsum dolor sal amet'),
                  populerDestination('assets/2img.jpg',
                      'Lorem Ipsum dolor sal amet', 'Lorem ipsum'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget populerDestination(String img, String city, String country) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(6)),
      height: 250,
      width: 180,
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
            width: 160,
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
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 26, 25, 25)),
          ),
        ],
      ),
    );
  }
}
