import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80), // Set the height of the AppBar
          child: Container(
            color: Colors.orange, // Set the orange color
            child: AppBar(
              title: const Text('Profile Page'),
              centerTitle: true,
              backgroundColor: Colors.transparent, // Make the AppBar background transparent
            ),
          ),
        ),
      body: Column(
        children: [
          // Header: Profile picture and name
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage('https://via.placeholder.com/150'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // วงกลมสีขาวตรงกลางเหนือชื่อผู้ใช้งาน
                Positioned(
                  bottom: 30,  // ตำแหน่งต่ำกว่ารูปเล็กน้อย
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Profile information (email, phone number)
          const Column(
            children: [
              Row(
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('user@example.com'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('123-456-7890'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.gps_fixed_rounded, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('649/12 Main Street'),
                ],
              ),
            ],
          ),
          const Spacer(),

          // Menu Section with buttons on the same row
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
                    ),
                    child: Text('Edit Profile'),
                  ),
                ),
                const SizedBox(width: 20),  // Space between buttons
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
                    ),
                    child: Text('Log Out'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
