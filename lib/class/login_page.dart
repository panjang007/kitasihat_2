import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kitasihat_2/class/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obescureText = true;

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                  size: 250,
                  color: Color(0xFFFFFFFF),
                ),
                const SizedBox(height: 25),
                const SizedBox(height: 25),

                // welcome message for login
                const Text(
                  'KitaSihatMY!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'Outfit'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 20, fontFamily: 'Outfit'),
                ),
                const SizedBox(height: 20),

                // email textfield
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
                        controller: _emailController,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            color: Color(0xFF000000)),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // password textfield
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
                        controller: _passwordController,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Outfit',
                            color: Color(0xFF000000)),
                        obscureText: _obescureText,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obescureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _obescureText = !_obescureText;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: signIn,
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
                          'Sign in',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 18,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 14,
                        )),
                    const Text('Register ',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 14,
                        )),
                    GestureDetector(
                      child: const Text(
                        'here',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Outfit',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // Handle the link click
                        navigateToNewPage(context);
                      },
                    ),
                  ],
                )
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
      MaterialPageRoute(builder: (context) => const RegistrationPage()),
    );
  }
}
