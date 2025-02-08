import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80), // Set the height of the AppBar
          child: Container(
            color: Colors.orange, // Set the orange color
            child: AppBar(
              title: const Text('Social Media Post'),
              centerTitle: true,
              backgroundColor: Colors.transparent, // Make the AppBar background transparent
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              // คอนเทนต์หลัก
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // แถวแรก: รูปโปรไฟล์, ชื่อและเวลา
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/profile.jpg'), // ใช้รูปโปรไฟล์ของคุณ
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('User Name', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('5 minute ago', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  // แถวที่สอง: รูปภาพโพสต์
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey[300], // สีเทาสำหรับรูปภาพโพสต์
                    child: const Center(
                      child: Text(
                        'Image Post',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // แถวที่สาม: ปุ่ม Like, Comment, Share
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Like'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Comment'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Share'),
                      ),
                    ],
                  ),
                ],
              ),
              
              // วงกลมสีฟ้า ขนาด 50x50 ที่มุมซ้ายบน
              Positioned(
                top: 2,
                left: 10,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue, // สีฟ้าสำหรับวงกลม
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