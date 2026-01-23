import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xFF36F46F)),
      darkTheme: ThemeData(primarySwatch: Colors.yellow),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
        backgroundColor: Colors.lightGreen,
        centerTitle: false,
        elevation: 10.0,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("search pressed", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("comments pressed", context);
            },
            icon: Icon(Icons.insert_comment_outlined),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("settings pressed", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("emails pressed", context);
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {
          MySnackBar("pressed add button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: Colors.grey,
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Home pressed", context);
          }
          if (index == 1) {
            MySnackBar("message pressed", context);
          }
          if (index == 2) {
            MySnackBar("profile pressed", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Mahadi")),
            ListTile(title: Text("Home")),
          ],
        ),
      ),
    );
  }
}
