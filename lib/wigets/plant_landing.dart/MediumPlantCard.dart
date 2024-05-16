import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MediumPlantCard extends StatelessWidget {
  String title;
  String url;
  String description;

  MediumPlantCard({
    required this.title,
    this.description = "",
    this.url = "https://cdn.pixabay.com/photo/2023/01/13/14/58/snake-7716269_1280.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom:8),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              url,
              fit:BoxFit.cover,
              height:100,
              width: 100,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(description),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}