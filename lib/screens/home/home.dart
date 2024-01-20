import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              backgroundImage: const AssetImage('assets/image1.png'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(244, 0, 13, 84),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20), // Add some space between text and image
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
              child: Column(
                children: [
                  Container(
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
                        color: const Color.fromARGB(255, 34, 101, 163),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Juisy And',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Savory Steak',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Text(
                              'Lorem ipsum dolor',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Only',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text(
                              "15.99",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                const Text(
                  "Meal Category",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildButton("Button 1"),
                  buildButton("Button 2"),
                  buildButton("Button 3"),
                  buildButton("Button 4"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String buttonText) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () {
          // Handle button tap
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
        ),
        child: Text(buttonText),
      ),
    );
  }
}
