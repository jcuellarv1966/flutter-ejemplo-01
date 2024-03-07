import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Cards/favourites_card.dart';

class FavouriteTab extends StatefulWidget {
  const FavouriteTab({super.key});

  @override
  State<FavouriteTab> createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const Text(""),
            backgroundColor: orange,
            title: Container(
              padding: const EdgeInsets.symmetric(horizontal: 56.0),
              child: headerText(
                  texto: "My Favourites",
                  color: white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  textAlign: TextAlign.center),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  favouritesCard(
                      context: context,
                      marginBottom: 15.0,
                      image: const NetworkImage(
                          "https://images.unsplash.com/photo-1579621970795-87facc2f976d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                      title: "New York Stock Exchangue",
                      subTitle: "NY Manhattan",
                      reviews: "4.50",
                      ratings: "240 ratings",
                      buttonText: "Delivery",
                      hasActionButton: true,
                      isFavourite: true),
                  favouritesCard(
                      context: context,
                      marginBottom: 15.0,
                      image: const NetworkImage(
                          "https://images.unsplash.com/photo-1544377193-33dcf4d68fb5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                      title: "NASDAQ - Technology Stocks",
                      subTitle: "CA Vermont",
                      reviews: "2.50",
                      ratings: "360 ratings",
                      buttonText: "Delivery",
                      hasActionButton: true,
                      isFavourite: false),
                  favouritesCard(
                      context: context,
                      marginBottom: 15.0,
                      image: const NetworkImage(
                          "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                      title: "Stock of Toronto",
                      subTitle: "VA Vamcovuer",
                      reviews: "5.25",
                      ratings: "120 ratings",
                      buttonText: "Delivery",
                      hasActionButton: true),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
