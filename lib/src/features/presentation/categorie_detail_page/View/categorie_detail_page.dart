import 'dart:ffi';

import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class CategorieDetailPage extends StatelessWidget {
  const CategorieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: const IconThemeData(
              color: Colors.white, //change your color here
            ),
            expandedHeight: 240.0,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const ClipRRect(
                    child: Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1579689252125-767b773f3f69?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvbHNhJTIwZGUlMjBWYWxvcmVzfGVufDB8MXwwfHx8MA%3D%3D"),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: "Notes",
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 36.0,
                            textAlign: TextAlign.center),
                        headerText(
                            texto: "Notes of FED",
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 28.0,
                            textAlign: TextAlign.center),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: headerText(
                        texto: "Details",
                        color: const Color.fromRGBO(51, 58, 77, 1.0),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        textAlign: TextAlign.left),
                  ),
                  const Text("Hola .."),
                  const Text("Hola .."),
                  const Text("Hola .."),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
