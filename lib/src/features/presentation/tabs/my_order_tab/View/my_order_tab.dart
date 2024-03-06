import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/tabs/my_order_tab/View/components/empty_order_view.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({super.key});

  @override
  State<MyOrderTab> createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = false;

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
              : CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      elevation: 0.5,
                      leading: const Text(""),
                      backgroundColor: white,
                      title: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 72.0),
                        child: headerText(
                            texto: "My Order",
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0,
                            textAlign: TextAlign.center),
                      ),
                    ),
                    SliverList(
                        delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              _orders(context),
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
        ),
      ),
    );
  }
}

Widget _orders(BuildContext context) {
  return Column(
    children: [
      _cardOrder(context),
    ],
  );
}

Widget _cardOrder(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    margin: const EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            offset: Offset(0.5, 7.0),
            blurRadius: 4.0,
          )
        ]),
    child: Column(
      children: [
        Row(
          children: [
            _cardOrderTopContent(),
          ],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context),
          ],
        ),
        _moreContent(context),
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 0.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
          child: headerText(
              texto: "Note of FED",
              fontWeight: FontWeight.w600,
              fontSize: 24.0),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: gris,
                size: 16.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                child: headerText(
                    texto: "New York Stock Exchange",
                    color: gris,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 55.0),
                width: 130.0,
                height: 20.0,
                child: ElevatedButton(
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
                        color: white,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.0,
                      ),
                    )),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 0.0),
    decoration: BoxDecoration(
        border: Border(
            bottom:
                BorderSide(color: Theme.of(context).dividerColor, width: 0.3))),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(
            texto: "Note 30d",
            color: orange,
            fontWeight: FontWeight.w600,
            fontSize: 13.0,
          ),
          headerText(
            texto: "Note of Monetary Market of 30d",
            color: gris,
            fontWeight: FontWeight.w300,
            fontSize: 11.0,
          ),
        ],
      ),
      trailing: headerText(
        texto: "99.00 USA",
        color: gris,
        fontWeight: FontWeight.w300,
        fontSize: 11.0,
      ),
    ),
  );
}

Widget _moreContent(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 0.0),
    child: ListTile(
      title: headerText(
        texto: "Add more items ...",
        color: rosa,
        fontWeight: FontWeight.w600,
        fontSize: 15.0,
      ),
    ),
  );
}
