import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../Customer_details/customer_deatils.dart';
import '../Customer_details/delivery_list.dart';
import '../Dashboard/dashboard_screen.dart';
import '../Pick_up/pick_up.dart';
import '../Pick_up/pick_up_list.dart';
import '../Profile/profile.dart';
import '../Wash_services/wash_service.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
  BottomNavigationBarItem(
      icon: Icon(Icons.local_shipping_outlined), label: "Delivery"),
  BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "Pickup"),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "John"),
];

List<Widget> bottomNavScreen = <Widget>[
  DashboardScreen(),
  PickUpScreen(),
  WashService(),
  ProfileScreen()
];
const List<String> appBarTitles = ["Home", "Delivery", "Pickup", "John"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  void _onBottomNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      extendBodyBehindAppBar: true,
      backgroundColor: Constant.bgWhite,
      appBar: _currentIndex != 0
          ? AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              title: Text(
                appBarTitles[_currentIndex],
                style: TextStyle(
                    fontSize: 16,
                    color: Constant.globalFontCol,
                    fontWeight: FontWeight.w600),
              ),
              actions: _currentIndex == 5
                  ? [
                      IconButton(
                        icon: Image.asset("assets/bag.png"),
                        onPressed: () {
                          // Handle action
                        },
                      )
                    ]
                  : null,
            )
          : null,
      body: Stack(
        children: [
          SizedBox(height: 48),
          Positioned(
            child: Image.asset(
              "assets/app_top_bg.png",
              fit: BoxFit.contain,
            ),
          ),
          if (_currentIndex == 0) DashboardScreen(),
          if (_currentIndex == 1) DeliveryList(),
          if (_currentIndex == 2) PickUpList(),
          // if (_currentIndex == 2) WashService(),
          if (_currentIndex == 3) ProfileScreen(),
          // SingleChildScrollView(
          //     child: bottomNavScreen.elementAt(state.tabIndex)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavItemTapped,
        items: bottomNavItems,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
