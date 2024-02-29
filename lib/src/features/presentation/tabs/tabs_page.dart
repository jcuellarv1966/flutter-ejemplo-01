import 'package:curso_delivery_app/src/features/presentation/common-widgets/alert_dialog.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';
import 'package:flutter/material.dart';

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

  Future _pedirLocation(BuildContext context) async {
    await showAlertDialog(
        context,
        const AssetImage('assets/location.jpg'),
        "Enable Your Location",
        "Please allow to use your location to show nearly shop on the map.",
        _doneButton(context, "Enabled location"));
  }

  Widget _doneButton(BuildContext context, String labelButton) {
    return Container(
        width: 370.0,
        height: 36.0,
        margin: const EdgeInsets.only(top: 20.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              // ignore: avoid_print
              print("Enable geolocation ..");
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(labelButton,
                  style: const TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center),
            )));
  }
}
