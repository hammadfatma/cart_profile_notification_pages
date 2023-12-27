import 'package:cart_profile_notification_pages/screens/cart_screen.dart';
import 'package:cart_profile_notification_pages/screens/forgot_password_screen.dart';
import 'package:cart_profile_notification_pages/screens/notifications_screen.dart';
import 'package:cart_profile_notification_pages/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/icon_badge_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> widgetOptions = [
    ForgotPasswordScreen(),
    Text('Search Screen'),
    CartScreen(),
    ProfileScreen(),
    Text('More Screen'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconBadgeWidget(
            txt: '5',
            con: Icons.maps_ugc_outlined,
            fl: true,
          ),
          IconBadgeWidget(
            txt: '10',
            con: Icons.notifications_none_outlined,
            fl: false,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: widgetOptions.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onItemTap,
        selectedItemColor: Color(0xffff6969),
        unselectedItemColor: Color(0xff515c6f),
        selectedIconTheme: IconThemeData(
          // color: Color(0xffff6969),
          size: 20,
        ),
        unselectedIconTheme: IconThemeData(
          // color: Color(0xff515c6f),
          size: 15,
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 11,
          // color: Color(0xffff6969),
          letterSpacing: 0,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 11,
          letterSpacing: 0,
          // color: Color(0xff727c8e),
        ),
        // backgroundColor: Color(0xffffffff),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_outlined,
              ),
              label: 'More'),
        ],
      ),
    );
  }
}
