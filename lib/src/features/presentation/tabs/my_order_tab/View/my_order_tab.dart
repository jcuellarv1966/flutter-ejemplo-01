import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/my_order_tab/View/components/empty_order_view.dart';

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({super.key});

  @override
  State<MyOrderTab> createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Scaffold(
          backgroundColor: bgGreyPage,
          body: emptyOrderState
              ? const EmptyOrderView()
              : const Text("Order view in Cart ..."),
        ),
      ),
    );
  }
}
