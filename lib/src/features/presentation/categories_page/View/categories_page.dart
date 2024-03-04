import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 1.5,
            title: Container(
                padding: const EdgeInsets.all(72.0),
                child: headerText(texto: "Categories", fontSize: 24)),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              children: [
                _card(
                    context,
                    const NetworkImage(
                        "https://images.unsplash.com/photo-1579689252125-767b773f3f69?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvbHNhJTIwZGUlMjBWYWxvcmVzfGVufDB8MXwwfHx8MA%3D%3D"),
                    "Notes",
                    "Notes of FED"),
                _card(
                    context,
                    const NetworkImage(
                        "https://images.unsplash.com/photo-1642751226315-e6dc6b47fd54?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHRyYWRpbmd8ZW58MHwxfDB8fHwy"),
                    "Bonds",
                    "Bonds of USA"),
                _card(
                    context,
                    const NetworkImage(
                        "https://images.unsplash.com/photo-1607269910784-aafe40882991?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJvbHNhJTIwZGUlMjBWYWxvcmVzfGVufDB8MXwwfHx8MA%3D%3D"),
                    "Stocks",
                    "Stocks of NASDAQ"),
                _card(
                    context,
                    const NetworkImage(
                        "https://images.unsplash.com/photo-1613442301287-4fa478efd9ca?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGJvbHNhJTIwZGUlMjBWYWxvcmVzfGVufDB8MXwwfHx8Mg%3D%3D"),
                    "Letters",
                    "Letters of Monetary Market"),
                _card(
                    context,
                    const NetworkImage(
                        "https://images.unsplash.com/photo-1579532537598-459ecdaf39cc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYWRpbmd8ZW58MHwxfDB8fHwy"),
                    "Currency",
                    "Money of transactions"),
                _card(
                    context,
                    const NetworkImage(
                        "https://images.unsplash.com/photo-1639754391037-98dd3cb74e09?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dHJhZGluZ3xlbnwwfDF8MHx8fDI%3D"),
                    "Cryptos",
                    "Digital Currencies"),
                _card(
                    context,
                    const NetworkImage(
                        "https://images.unsplash.com/photo-1640575277674-8f0adfca9248?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fHRyYWRpbmd8ZW58MHwxfDB8fHwy"),
                    "ETFs",
                    "Exchange Traded Fund"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context, ImageProvider<Object> image, String title,
    String subTitle) {
  return GestureDetector(
    onTap: () {},
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 175.0,
            height: 165.0,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Container(
          width: 175.0,
          height: 165.0,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 1.4),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                  texto: title,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0),
              headerText(
                  texto: subTitle,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0),
            ],
          ),
        )
      ],
    ),
  );
}
