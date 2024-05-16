import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/InfoProductCard.dart';
import 'package:flutter_application_1/wigets/productcard.dart';
import 'package:flutter_application_1/wigets/smallproductcard.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: const Text('Title')),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCard(),
                SmallProductCard(),
                SmallProductCard(),
                SmallProductCard(),
                SmallProductCard(),
                InfoProductCard()
              ],
            )),
      ),
    );
  }
}