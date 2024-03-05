import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

class AssetDetailPage extends StatelessWidget {
  const AssetDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: const IconThemeData(
              color: Colors.white, //change your color here
            ),
            expandedHeight: 420.0,
            backgroundColor: orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const ClipRRect(
                    child: Image(
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1579689252125-767b773f3f69?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvbHNhJTIwZGUlMjBWYWxvcmVzfGVufDB8MXwwfHx8MA%3D%3D"),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                  ),
                  Wrap(
                    children: [
                      _promoButton(),
                      _infoAsset(),
                      _infoAssetStats(),
                      _offerBanner()
                    ],
                  )
                ],
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(15.0),
                child: const Icon(
                  Icons.share_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                child: const Icon(
                  Icons.bookmark_outline,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                  Text("Hola ..."),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

Widget _promoButton() {
  return Container(
    margin: const EdgeInsets.only(
      top: 122,
      left: 20.0,
      right: 10.0,
    ),
    width: double.infinity,
    height: 25.0,
    child: Row(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: orange,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {},
            child: Align(
              alignment: Alignment.center,
              child: headerText(
                texto: "Free Comission",
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
              ),
            )),
      ],
    ),
  );
}

Widget _infoAsset() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: headerText(
          texto:
              "Notes of the FED, the most Profitable Invest in short Time...",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
      Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.white30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5.0),
              child: headerText(
                texto: "New York Stock Exchange",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _infoAssetStats() {
  return Container(
    margin: const EdgeInsets.only(top: 26.0),
    padding: const EdgeInsets.symmetric(horizontal: 28.0),
    height: 70.0,
    decoration: const BoxDecoration(
        border: Border(
      top: BorderSide(color: Colors.white, width: 0.25),
      bottom: BorderSide(color: Colors.white, width: 0.15),
    )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 18.0,
                  ),
                ),
                headerText(
                    texto: "4.50",
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0),
              ],
            ),
            headerText(texto: "124 Ratings", color: Colors.white54),
          ],
        ),
        Container(
          height: 40.0,
          decoration: const BoxDecoration(
              border:
                  Border(right: BorderSide(color: Colors.white, width: 0.35))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  child: const Icon(
                    Icons.bookmark,
                    color: Colors.white,
                    size: 18.0,
                  ),
                ),
                headerText(
                    texto: "128k",
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0),
              ],
            ),
            headerText(texto: "Favourites", color: Colors.white54),
          ],
        ),
        Container(
          height: 40.0,
          decoration: const BoxDecoration(
              border:
                  Border(right: BorderSide(color: Colors.white, width: 0.35))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  child: const Icon(
                    Icons.photo,
                    color: Colors.white,
                    size: 18.0,
                  ),
                ),
                headerText(
                    texto: "256",
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0),
              ],
            ),
            headerText(texto: "Photos", color: Colors.white54),
          ],
        ),
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    color: const Color.fromRGBO(255, 237, 214, 1.0),
    padding: const EdgeInsets.all(20.0),
    margin: const EdgeInsets.only(top: 5.0),
    height: 94.0,
    child: Row(
      children: [
        SizedBox(
          width: 235.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerText(texto: "New! Try Buy", color: orange, fontSize: 16.0),
              headerText(
                  texto:
                      "Pickup on tour time. Your order is ready when you are.",
                  color: gris,
                  fontWeight: FontWeight.w900,
                  fontSize: 10.0),
            ],
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 28.0,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.50,
                backgroundColor: orange,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              onPressed: () {},
              child: Align(
                alignment: Alignment.center,
                child: headerText(
                  texto: "Order now",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              )),
        ),
      ],
    ),
  );
}
