import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
      child: const Text("Profile ..."),
    ));
  }
}
