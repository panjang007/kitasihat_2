import 'package:flutter/material.dart';
import 'package:kitasihat_2/class/medical_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isActivated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[600],
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Padding - between top and button
                const SizedBox(height: 50),

                // Butang Kecemasan
                GestureDetector(
                  onTap: () {
                    // Handle the link click
                    navigateToNewPage(context);
                  },
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.yellow, // Set the background color
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle the button click
                        navigateToNewPage(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, // Set the button background color to transparent
                        elevation: 0, // Remove the default button shadow
                      ),
                      child: const Text(
                        'Emergency',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),

                // Heart Rate Statistic

                // Butang Connect to Smartwatch
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToNewPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MedicalHistory()),
    );
  }
}
