import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza_app/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    //final darkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
        bottomNavigationBar: Obx(() => NavigationBar(
                height: 80,
                elevation: 0,
                backgroundColor: Color.fromARGB(244, 0, 13, 84),
                indicatorColor: Colors.white.withOpacity(0),
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Iconsax.home, color: Colors.white),
                    label: "Home",
                  ),
                  NavigationDestination(
                      icon: Icon(Iconsax.shop, color: Colors.white),
                      label: "Shop"),
                  NavigationDestination(
                      icon: Icon(Iconsax.heart, color: Colors.white),
                      label: "Wishlist"),
                  NavigationDestination(
                      icon: Icon(Iconsax.user, color: Colors.white),
                      label: "Profile"),
                ])),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomePage(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: const Color.fromARGB(255, 48, 46, 38),
    ),
    Container(
      color: Colors.pink,
    ),
    // const StoreScreen(),
    // const Favouritescreen(),
    // const SettingsScreen(),
  ];
}
