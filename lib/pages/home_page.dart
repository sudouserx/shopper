import 'package:flutter/material.dart';
import 'package:onlineshop/pages/saved_item_page.dart';
import 'package:onlineshop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Key to manage Scaffold state for drawer functionality
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Keep track of the selected index
  int _selectedIndex = 0;

  // Method to update selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display in the main content area
  final List<Widget> _pages = [
    const ShopPage(),
    const SavedItemPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the Scaffold key
      backgroundColor: Colors.grey[300],

      // Drawer widget
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red.shade100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.jpeg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Hello, User!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("user@example.com",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text("Shop"),
              onTap: () {
                navigateBottomBar(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text("Saved Items"),
              onTap: () {
                navigateBottomBar(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                // Navigate to settings page
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                // Logout functionality
              },
            ),
          ],
        ),
      ),

      // Main content with custom AppBar
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.grey],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Custom AppBar with menu and cart icons
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState
                            ?.openDrawer(); // Open the drawer
                      },
                      icon: const Icon(Icons.menu, color: Colors.black),
                    ),
                    const Text(
                      "Online Shop",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigate to cart
                      },
                      icon:
                          const Icon(Icons.shopping_cart, color: Colors.black),
                    ),
                  ],
                ),
              ),

              // Main content: Display selected page
              Expanded(
                child: _pages[_selectedIndex],
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar for page navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Saved",
          ),
        ],
        selectedItemColor: Colors.red.shade800,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
