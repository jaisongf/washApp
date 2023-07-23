import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash/Business_Logic/home_page_bloc/home_screen_bloc.dart';

import '../Dashboard/dashboard_screen.dart';
import '../Pick_up/pick_up.dart';
import '../Wash_services/wash_service.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
  BottomNavigationBarItem(
      icon: Icon(Icons.local_shipping_outlined), label: "Delivery"),
  BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "Pickup"),
];

const List<Widget> bottomNavScreen = <Widget>[
  DashboardScreen(),
  PickUpScreen(),
  WashService()
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenBloc, HomeScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<HomeScreenBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
