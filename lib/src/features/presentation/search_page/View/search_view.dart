import 'package:flutter/material.dart';
import 'package:flutter_swiper_3/flutter_swiper_3.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_double.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/card_vertical.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/populars_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        alignment: Alignment.centerLeft,
                        child: headerText(
                            texto: "Search",
                            color: Colors.black,
                            fontSize: 30.0)),
                    _searchInput(context),
                    const SizedBox(height: 10.0),
                    headerDoubleText(
                      textHeader: "Recent Search",
                      textAction: "Clear All",
                      func: () {},
                    ),
                    _sliderRecentSearch(),
                    const SizedBox(height: 5.0),
                    headerDoubleText(
                        textHeader: "Recommended for you ...",
                        textAction: "",
                        func: () {}),
                    const SizedBox(height: 5.0),
                    PopularesCard(
                        context: context,
                        image: const NetworkImage(
                            "https://images.unsplash.com/photo-1579621970795-87facc2f976d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                        title: "This is a first option",
                        subTitle: "Detail of this option ...",
                        reviews: "4.50",
                        ratings: "240 ratings",
                        hasActionButton: false),
                    PopularesCard(
                        context: context,
                        image: const NetworkImage(
                            "https://images.unsplash.com/photo-1544377193-33dcf4d68fb5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                        title: "This is a second option",
                        subTitle: "Detail of this option ...",
                        reviews: "2.50",
                        ratings: "360 ratings",
                        hasActionButton: false),
                    PopularesCard(
                        context: context,
                        image: const NetworkImage(
                            "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                        title: "This is a third option",
                        subTitle: "Detail of this option ...",
                        reviews: "5.25",
                        ratings: "120 ratings",
                        hasActionButton: false),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 36.0,
    margin: const EdgeInsets.only(top: 5.0),
    padding: const EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5.0),
        prefixIcon: Icon(Icons.search, color: gris),
        hintText: "Search",
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: const EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return cardVertical(
                context: context,
                width: 160.0,
                height: 120.0,
                image: const NetworkImage(
                    "https://images.unsplash.com/photo-1601597111158-2fceff292cdc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmFua2luZ3xlbnwwfHwwfHx8MA%3D%3D"),
                title: "Selecta aoption",
                subTitle: "Make a major change");
          },
        );
      },
    ),
  );
}
