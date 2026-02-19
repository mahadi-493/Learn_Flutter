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

  mySnackBar(message, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
        backgroundColor: const Color.fromARGB(255, 236, 247, 223),
        centerTitle: false,
        elevation: 10.0,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("search pressed", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("comments pressed", context);
            },
            icon: Icon(Icons.insert_comment_outlined),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("settings pressed", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("emails pressed", context);
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
          mySnackBar("pressed add button", context);
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
            mySnackBar("Home pressed", context);
          }
          if (index == 1) {
            mySnackBar("message pressed", context);
          }
          if (index == 2) {
            mySnackBar("profile pressed", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 240, 237),
                ),
                accountName: Text("Mahadi Hasan"),
                accountEmail: Text("mahadi.themh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/120239568?s=400&u=fe5866e013a140500148154b91a0681b295f51f8&v=4",
                  ),
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.contact_page), title: Text("Contact")),
            ListTile(leading: Icon(Icons.email), title: Text("Email")),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
            ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 240, 237),
                ),
                accountName: Text("Mahadi Hasan"),
                accountEmail: Text("mahadi.themh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/120239568?s=400&u=fe5866e013a140500148154b91a0681b295f51f8&v=4",
                  ),
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.contact_page), title: Text("Contact")),
            ListTile(leading: Icon(Icons.email), title: Text("Email")),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
            ListTile(leading: Icon(Icons.phone), title: Text("Phone")),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(
              "https://avatars.githubusercontent.com/u/120239568?s=400&u=fe5866e013a140500148154b91a0681b295f51f8&v=4",
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(
              "https://avatars.githubusercontent.com/u/120239568?s=400&u=fe5866e013a140500148154b91a0681b295f51f8&v=4",
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(
              "https://avatars.githubusercontent.com/u/120239568?s=400&u=fe5866e013a140500148154b91a0681b295f51f8&v=4",
            ),
          ),
        ],
      ),
    );
  }
}
