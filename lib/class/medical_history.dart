import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MedicalHistory extends StatefulWidget {
  const MedicalHistory({super.key});

  @override
  State<MedicalHistory> createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00FFCA),
      appBar: AppBar(
        title: const Text(
          'Medical History',
          style: TextStyle(fontFamily: 'Sans Serif', fontSize: 20.0),
        ),
        backgroundColor: Color(0xFF00FFCA),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Theme(
                data: ThemeData(
                  visualDensity: VisualDensity.standard,
                  iconTheme: IconThemeData(size: 30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Patient Information',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Name: John Doe\nAge: 30\nBlood Type: A+\nAllergies: None\nBMI: 25.5\nHeight: 180 cm\nWeight: 75 kg',
                      style: TextStyle(
                        fontFamily: 'Sans Serif',
                        fontSize: 24,
                        color: Color(0xFF000000),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ExpansionTile(
                      // collapsed state
                      iconColor: const Color(0xFFFFFFFF),
                      collapsedIconColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      // expanded state
                      title: const Text(
                        'Treatment History',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 23,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      tilePadding: const EdgeInsets.all(10),
                      collapsedBackgroundColor: const Color(0xFF190152),
                      collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xFF190152),
                      children: [
                        Container(
                          color: const Color(0xFFFFFFFF),
                          child: const ListTile(
                            title: Text('Medication 1: Aspirin'),
                            subtitle: Text('Data'),
                          ),
                        ),
                        Container(
                          color: const Color(0xFFFFFFFF),
                          child: const ListTile(
                            title: Text('Medication 2: Antibiotics'),
                            subtitle: Text('Data'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ExpansionTile(
                      // collapsed state
                      iconColor: const Color(0xFFFFFFFF),
                      collapsedIconColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      // expanded state
                      title: const Text(
                        'Medication History',
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 23,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      tilePadding: const EdgeInsets.all(10),
                      collapsedBackgroundColor: const Color(0xFF190152),
                      collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xFF190152),
                      children: [
                        Container(
                          color: const Color(0xFFFFFFFF),
                          child: const ListTile(
                            title: Text('Medication 1: Aspirin'),
                            subtitle: Text('Data'),
                          ),
                        ),
                        Container(
                          color: const Color(0xFFFFFFFF),
                          child: const ListTile(
                            title: Text('Medication 2: Antibiotics'),
                            subtitle: Text('Data'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
