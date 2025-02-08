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
              title: const Text('Grid Layout'),
              centerTitle: true,
              backgroundColor: Colors.transparent, // Make the AppBar background transparent
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    const SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.green),
                    const SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.blue),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.orange),
                    const SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.purple),
                    const SizedBox(width: 20),
                    Container(width: 100, height: 100, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}