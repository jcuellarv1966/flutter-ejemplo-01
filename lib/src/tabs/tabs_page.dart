import 'package:curso_delivery_app/src/tabs/explore_tab.dart';
import 'package:curso_delivery_app/src/tabs/favourite_tab.dart';
import 'package:curso_delivery_app/src/tabs/my_order_tab.dart';
import 'package:curso_delivery_app/src/tabs/profile_tab.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  // ignore: unused_field, prefer_final_fields
  List<Widget> _widgetOptions = [
    const ExploreTab(),
    const MyOrderTab(),
    const FavouriteTab(),
    const ProfileTab(),
  ];

  // ignore: unused_field, prefer_final_fields
  int _selectedItemIndex = 0;

  // ignore: unused_element
  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottonNavigationBar(context),
    );
  }

  Widget _bottonNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).secondaryHeaderColor,
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedItemIndex,
      onTap: _cambiarWidget,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment), label: "My Order"),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Favourite"),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: "Profile"),
      ],
    );
  }
}
