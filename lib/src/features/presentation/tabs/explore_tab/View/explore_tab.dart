import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              _topBar(context),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 340,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(234, 236, 239, 1.0)),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, size: 20.0, color: gris),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text("Search",
                  style: TextStyle(
                    color: gris,
                    fontSize: 17.0,
                  )),
            )
          ],
        ),
      ),
      Container(
        width: 45,
        height: 45,
        margin: const EdgeInsets.only(left: 7),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
