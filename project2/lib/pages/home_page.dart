import 'package:flutter/material.dart';
import 'package:project2/components/bottom_nav_bar.dart';
import 'package:project2/pages/cart_page.dart';
import 'package:project2/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),

    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
              child: Image.asset(
                "lib/images/logo.png",
                color: Colors.white,
              )
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                  ),
                  
                ),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                  ),
                ),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                  ),
                ),
              ),
            ),
              ],
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}