import 'package:flutter/material.dart';
import 'package:mb/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner : false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'flutter Demo',
            style: TextStyle(color:Colors.red),
            ),
            leading: const Icon(Icons.add),
            backgroundColor: Colors.purple,
            ),
        body: Container(
          height: 100,
          width: 100,
          color: Colors.orange,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: const Text('Hello'),

        ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('Hello');
      },
      child: const Icon(Icons.phone),
      ),
    ));
  }
}