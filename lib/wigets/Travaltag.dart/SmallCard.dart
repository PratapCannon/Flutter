import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(8),
      // margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.only(bottom: 16),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/01/13/14/58/snake-7716269_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Indoor',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text('Plant name',
              style: TextStyle(color: Colors.white, fontSize: 24)),
        ],
      ),
    );
  }
}