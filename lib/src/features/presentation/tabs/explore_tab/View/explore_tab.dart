import 'package:flutter/material.dart';
import 'package:flutter_swiper_3/flutter_swiper_3.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Cards/populars_card.dart';

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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    _topBar(context),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 15.0, vertical: 2),
                      child: headerText(
                          texto: 'Discover new Finance Assets', fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              _sliderCards(),
              Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child:
                      _headers(context, "Popular this Week ...", "Show all")),
              PopularesCard(
                  context: context,
                  image: const NetworkImage(
                      "https://images.unsplash.com/photo-1579621970795-87facc2f976d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                  title: "This is a first option",
                  subTitle: "Detail of this option ...",
                  reviews: "4.50",
                  ratings: "240 ratings",
                  buttonText: "Delivery",
                  hasActionButton: true),
              PopularesCard(
                  context: context,
                  image: const NetworkImage(
                      "https://images.unsplash.com/photo-1544377193-33dcf4d68fb5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                  title: "This is a second option",
                  subTitle: "Detail of this option ...",
                  reviews: "2.50",
                  ratings: "360 ratings",
                  buttonText: "Delivery",
                  hasActionButton: true),
              PopularesCard(
                  context: context,
                  image: const NetworkImage(
                      "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                  title: "This is a third option",
                  subTitle: "Detail of this option ...",
                  reviews: "5.25",
                  ratings: "120 ratings",
                  buttonText: "Delivery",
                  hasActionButton: true),
              PopularesCard(
                  context: context,
                  image: const NetworkImage(
                      "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                  title: "This is a fourth option",
                  subTitle: "Detail of this option ...",
                  reviews: "3.25",
                  ratings: "520 ratings",
                  buttonText: "Delivery",
                  hasActionButton: true),
              PopularesCard(
                  context: context,
                  image: const NetworkImage(
                      "https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                  title: "This is a fifth option",
                  subTitle: "Detail of fifth option ...",
                  reviews: "3.00",
                  ratings: "225 ratings",
                  buttonText: "Delivery",
                  hasActionButton: true),
              PopularesCard(
                  context: context,
                  image: const NetworkImage(
                      "https://plus.unsplash.com/premium_photo-1670249421324-232b654455d0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                  title: "This is a sixth option",
                  subTitle: "Detail of this option ...",
                  reviews: "4.85",
                  ratings: "124 ratings",
                  buttonText: "Delivery",
                  hasActionButton: true),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: _headers(context, "Collections", "Show all")),
              _sliderCollections(),
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
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, "search"),
        child: Container(
          width: 315,
          height: 40,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(15.0),
          ),
          // ignore: avoid_unnecessary_containers
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                const Icon(Icons.search, size: 20.0, color: gris),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Text("Search",
                      style: TextStyle(
                        color: gris,
                        fontSize: 17.0,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 45,
        height: 45,
        margin: const EdgeInsets.only(left: 5),
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
          onPressed: () {
            Navigator.pushNamed(context, "filter");
          },
        ),
      ),
    ],
  );
}

Widget _sliderCards() {
  return Container(
      height: 350.0,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjeta(context);
            },
          );
        },
      ));
}

Widget _tarjeta(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: const Image(
              width: 200.0,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1621264448270-9ef00e88a935?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHRyYWRpbmd8ZW58MHx8MHx8fDA%3D")),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: const Text("Public Note of USA",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0)),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 1.0),
                child: const Text("Instrument of Monetary Market",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0))),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: amarillo,
              size: 16,
            ),
            const Text("4.5",
                style: TextStyle(
                    color: gris, fontWeight: FontWeight.w500, fontSize: 13.0)),
            const Text(" (233 ratings) ",
                style: TextStyle(
                    color: gris, fontWeight: FontWeight.w500, fontSize: 13.0)),
            // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
            Container(
              width: 80.0,
              height: 18.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: orange,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {},
                child: const Text('Delivery'),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textOption) {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        alignment: Alignment.centerLeft,
        child: headerText(texto: textHeader, fontSize: 18.0),
      ),
      const Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textOption,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
              ),
            ),
            const Icon(Icons.play_arrow),
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180.0,
    margin: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            /* return const Text("Hola ..."); */
            return _tarjetaCollection(context);
          },
        );
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: const Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1640340434855-6084b1f4901c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYWRpbmd8ZW58MHx8MHx8fDA%3D"),
          ),
        ),
      ],
    ),
  );
}
