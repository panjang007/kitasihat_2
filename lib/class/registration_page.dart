import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kitasihat_2/class/home_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
  final _NameController = TextEditingController();
  final _ICNumberController = TextEditingController();
  final _PhoneNumberController = TextEditingController();
  final _PasswordController = TextEditingController();
  final _ConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[600],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon perisai KitaSihatMY
                const Icon(
                  Icons.health_and_safety,
                  size: 100,
                  color: Color(0xFFFFFFFF),
                ),
                const SizedBox(height: 25),

                // KitaSihatMY + Registration message
                const Text(
                  'KitaSihatMY!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'Outfit'),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Register Here: ',
                      style: TextStyle(fontSize: 20, fontFamily: 'Outfit'),
                    ),
                    Icon(
                      Icons.people_alt_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Name textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border:
                          Border.all(color: const Color(0xFFD1D1D6), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _NameController,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            color: Color(0xFF000000)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // IC Number textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border:
                          Border.all(color: const Color(0xFFD1D1D6), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: _ICNumberController,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            color: Color(0xFF000000)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Identification Card Number',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Phone Number textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border:
                          Border.all(color: const Color(0xFFD1D1D6), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: _PhoneNumberController,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            color: Color(0xFF000000)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border:
                          Border.all(color: const Color(0xFFD1D1D6), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        controller: _PasswordController,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            color: Color(0xFF000000)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Confirm Password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border:
                          Border.all(color: const Color(0xFFD1D1D6), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z]')), // Allow alphabets
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9]')), // Allow numbers
                          FilteringTextInputFormatter.allow(RegExp(
                              r'[!@#$%^&*(),.?":{}|<>]')), // Allow special characters
                        ],
                        obscureText: true,
                        controller: _ConfirmPasswordController,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            color: Color(0xFF000000)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Verify Human Captcha

                // Register Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      // Handle the link click
                      navigateToNewPage(context);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0XFF190152),
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 18,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 45),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // navigate link to registration page
  void navigateToNewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
