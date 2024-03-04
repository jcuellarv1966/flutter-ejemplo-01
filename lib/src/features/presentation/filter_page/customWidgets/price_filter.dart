import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({super.key});

  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  // Properties
  RangeValues _values = const RangeValues(0.1, 100.00);
  int _minPrice = 0;
  int _maxPrice = 100;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "$_minPrice USA",
          style: const TextStyle(
            fontSize: 14.0,
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          width: 274.0,
          child: RangeSlider(
            activeColor: orange,
            inactiveColor: gris,
            values: _values,
            min: 0.00,
            max: 100.00,
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrice = _values.start.round();
                _maxPrice = _values.end.round();
              });
            },
          ),
        ),
        Text("$_maxPrice USA",
            style: const TextStyle(
              fontSize: 14.0,
            )),
      ],
    );
  }
}
