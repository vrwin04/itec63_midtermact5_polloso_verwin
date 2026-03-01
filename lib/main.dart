import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[700], // Background color as per instructions
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/verwinpic.jpg'), // Added Avatar Image
              ),
              const Text(
                'Verwin Polloso', // FULLNAME
                style: TextStyle(
                  fontFamily: 'Emaro', // Custom font applied
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'BSIT STUDENT', // BSIT STUDENT
                style: TextStyle(
                  fontFamily: 'Kallina',
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.5, // Letterspacing property
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone, // Add icons
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+63 912 345 6789', // CONTACT NUMBER
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'BoyScout',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'verwin.polloso@example.com', // EMAIL ADDRESS
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'BoyScout',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}