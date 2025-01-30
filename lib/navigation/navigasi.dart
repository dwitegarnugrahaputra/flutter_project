import 'package:finaal_project/navigation/home_page.dart';
import 'package:finaal_project/navigation/profile_page.dart';
import 'package:finaal_project/navigation/shop_page.dart';
import 'package:flutter/material.dart';

class Navigasi extends StatefulWidget {
  const Navigasi({super.key});

  @override
  State<Navigasi> createState() => _homepageState();
}

class _homepageState extends State<Navigasi> {
  int _currentIndex = 0;

  final List<Widget> _pages = [HomePage(), ShopScreen(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex:_currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor:Colors.pink,
        unselectedItemColor:Colors.black,
        backgroundColor:Colors.white,
        items: const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Home.png')),label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Bag.png')),label: "shop"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Group.png')),label: "profile")

        ],
      ),
    );
  }
}
