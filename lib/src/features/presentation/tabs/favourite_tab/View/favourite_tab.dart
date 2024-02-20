import 'package:flutter/material.dart';

class FavouriteTab extends StatefulWidget {
  const FavouriteTab({super.key});

  @override
  State<FavouriteTab> createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
      child: const Text("Favourite ..."),
    ));
  }
}
