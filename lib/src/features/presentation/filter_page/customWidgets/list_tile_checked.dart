import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

// ignore: must_be_immutable
class ListTileChecked extends StatefulWidget {
  String texto;
  bool isActive;
  Function() func;

  ListTileChecked(
      {super.key,
      required this.texto,
      required this.isActive,
      required this.func});

  @override
  State<ListTileChecked> createState() => _ListTileCheckedState();
}

class _ListTileCheckedState extends State<ListTileChecked> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      child: Column(
        children: [
          listTiles(
            context: context,
            texto: widget.texto,
            isActive: widget.isActive,
            func: widget.func,
          )
        ],
      ),
    );
  }
}

Widget listTiles(
    {required BuildContext context,
    texto = String,
    isActive = bool,
    required func}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      onTap: func,
      title: headerText(
          texto: texto,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 15),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? orange : gris,
            )
          : const Text(""),
    ),
  );
}
