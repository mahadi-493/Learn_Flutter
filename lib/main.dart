import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('My App'),),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: const Color.fromARGB(255, 215, 213, 213),
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body:Text('Hello World'),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
