import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza_app/navigation_menu.dart';
import 'package:pizza_app/screens/authentication/login.dart';
import 'package:pizza_app/utils/validation/validation.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final hidePassword = true.obs;
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 7, 10, 31),
        body: Padding(
            padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
            child: SingleChildScrollView(
                // child: GetBuilder<SignUpController>(builder: (controller) {
                child: Form(
                    key: controller.formKey,
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
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                        prefixIcon:
                                            const Icon(Icons.person_2_rounded),
                                        prefixIconColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    validator: (value) =>
                                        Validation.validateEmptyText(
                                            "First Name", value),
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
                                    validator: (value) =>
                                        Validation.validateEmptyText(
                                            "Last Name", value),
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        labelText: 'Last Name',
                                        labelStyle: const TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                        prefixIcon:
                                            const Icon(Icons.person_2_rounded),
                                        prefixIconColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            borderRadius:
                                                BorderRadius.circular(10))),
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
                                    validator: (value) =>
                                        Validation.validatePhoneNumber(value),
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        labelText: 'Mobile Number',
                                        labelStyle: const TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                        prefixIcon:
                                            const Icon(Icons.phone_android),
                                        prefixIconColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            borderRadius:
                                                BorderRadius.circular(10))),
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
                                    validator: (value) =>
                                        Validation.validatePhoneNumber(value),
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        labelText: 'Alternative Number',
                                        labelStyle: const TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                        prefixIcon: const Icon(Icons.phone),
                                        prefixIconColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 248, 248, 248)),
                                            borderRadius:
                                                BorderRadius.circular(10))),
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
                                    validator: (value) =>
                                        Validation.validateEmail(value),
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        labelText: 'E-mail',
                                        labelStyle: const TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 248, 248, 248)),
                                        prefixIcon: const Icon(Icons.mail),
                                        prefixIconColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        border: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 245, 245, 245)),
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Obx(
                                    () => TextFormField(
                                      obscureText:
                                          controller.hidePassword.value,
                                      validator: (value) =>
                                          Validation.validatePassword(value),
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: const TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 248, 248, 248),
                                        ),
                                        prefixIcon:
                                            const Icon(Icons.fingerprint),
                                        prefixIconColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 245, 245, 245),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () => controller
                                                  .hidePassword.value =
                                              !controller.hidePassword.value,
                                          icon: Icon(
                                              controller.hidePassword.value
                                                  ? Iconsax.eye_slash
                                                  : Iconsax.eye),
                                        ),
                                      ),
                                    ),
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
                                  onPressed: () {
                                    if (controller.formKey.currentState
                                            ?.validate() ??
                                        false) {
                                      // Form is valid, navigate to the next screen
                                      Get.to(const NavigationMenu());
                                    }
                                  },
                                  child: const Text("Sign Up",
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
                                  "Already registered ?",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                TextButton(
                                  onPressed: () => Get.to(const LoginScreen()),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 15),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )))));
  }
}
