import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';
import 'package:curso_delivery_app/src/features/presentation/filter_page/customWidgets/categories_filters.dart';
import 'package:curso_delivery_app/src/features/presentation/filter_page/customWidgets/list_tile_checked.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // FILTER BY BOOLEANS
  bool openNow = false;
  bool creditsCards = false;
  bool comissionAdded = false;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: Colors.white,
          title: Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 106.0, vertical: 20.0),
              child: headerText(
                  texto: "Filters",
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0)),
          leading: Container(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0),
            child: headerText(
                texto: "Reset", fontWeight: FontWeight.w500, fontSize: 15.0),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.only(top: 0.0, right: 15.0),
                child: headerText(
                    texto: "Done",
                    color: orange,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0),
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                child: headerText(
                    texto: "CATEGORIES",
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: const CategoriesFilter()),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    top: 5.0, bottom: 5.0, left: 15.0, right: 15.0),
                child: headerText(
                    texto: "SORT BY",
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _sortByContainer(),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    top: 5.0, bottom: 5.0, left: 15.0, right: 15.0),
                child: headerText(
                    texto: "FILTER",
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0),
              ),
              _filterContainer(),
            ])),
          ],
        ),
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileChecked(
              texto: "Top Rated",
              isActive: topRated,
              func: () {
                setState(() => topRated = !topRated);
              },
            ),
            ListTileChecked(
              texto: "Nearest Me",
              isActive: nearMe,
              func: () {
                setState(() => nearMe = !nearMe);
              },
            ),
            ListTileChecked(
              texto: "Cost High to Low",
              isActive: costHighToLow,
              func: () {
                setState(() => costHighToLow = !costHighToLow);
              },
            ),
            ListTileChecked(
              texto: "Cost Low to High",
              isActive: costLowToHigh,
              func: () {
                setState(() => costLowToHigh = !costLowToHigh);
              },
            ),
            ListTileChecked(
              texto: "Most Popular",
              isActive: mostPopular,
              func: () {
                setState(() => mostPopular = !mostPopular);
              },
            ),
          ],
        ));
  }

  Widget _filterContainer() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileChecked(
              texto: "Open Now",
              isActive: openNow,
              func: () {
                setState(() => openNow = !openNow);
              },
            ),
            ListTileChecked(
              texto: "Credits Cards",
              isActive: creditsCards,
              func: () {
                setState(() => creditsCards = !creditsCards);
              },
            ),
            ListTileChecked(
              texto: "Comission Added",
              isActive: comissionAdded,
              func: () {
                setState(() => comissionAdded = !comissionAdded);
              },
            ),
          ],
        ));
  }
}
