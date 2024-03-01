import 'package:flutter/material.dart';
import 'package:curso_delivery_app/src/colors/colors.dart';

import 'package:curso_delivery_app/src/features/presentation/common-widgets/alert_dialog.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/rounded_button.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = [
    const ExploreTab(),
    const MyOrderTab(),
    const FavouriteTab(),
    const ProfileTab(),
  ];

  int _selectedItemIndex = 0;

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
      selectedItemColor: orange,
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

  Future _pedirLocation(BuildContext context) async {
    await showAlertDialog(
        context,
        const AssetImage('assets/location.jpg'),
        "Enable Your Location",
        "Please allow to use your location to show nearly shop on the map.",
        roundedButton(
            context: context,
            labelButton: "Enabled location",
            color: orange,
            func: () {}));
  }
}
