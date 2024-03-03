import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class CategoriesFilter extends StatefulWidget {
  const CategoriesFilter({super.key});

  @override
  State<CategoriesFilter> createState() => _CategoriesFilterState();
}

class _CategoriesFilterState extends State<CategoriesFilter> {
  bool btnNotes = false;
  bool btnBonds = false;
  bool btnStocks = false;
  bool btnLetters = false;
  bool btnCurrency = false;
  bool btnCryptos = false;
  bool btnETFs = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _roundedButtonFilter(() {
                setState(() => btnNotes = !btnNotes);
              }, btnNotes, "NOTES"),
              _roundedButtonFilter(() {
                setState(() => btnBonds = !btnBonds);
              }, btnBonds, "BONDS"),
              _roundedButtonFilter(() {
                setState(() => btnStocks = !btnStocks);
              }, btnStocks, "STOCKS"),
              _roundedButtonFilter(() {
                setState(() => btnLetters = !btnLetters);
              }, btnLetters, "LETTERS"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _roundedButtonFilter(() {
                setState(() => btnCurrency = !btnCurrency);
              }, btnCurrency, "Currency"),
              _roundedButtonFilter(() {
                setState(() => btnCryptos = !btnCryptos);
              }, btnCryptos, "Cryptos"),
              _roundedButtonFilter(() {
                setState(() => btnETFs = !btnETFs);
              }, btnETFs, "ETFs"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _roundedButtonFilter(Function() func, bool isActive, String labelText) {
  return Container(
    padding: const EdgeInsets.only(right: 5.0),
    margin: const EdgeInsets.only(bottom: 10.0),
    width: 92.0,
    height: 20.0,
    child: ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: isActive ? orange : gris, width: 0.5),
          textStyle: TextStyle(
              color: isActive ? orange : gris,
              fontSize: 9.5,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal),
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          )),
      child: Text(labelText),
    ),
  );
}
