
import 'package:flutter/material.dart';

class GoFitNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right:16),
      child: Row(
        children: [
          // Container(
          //   clipBehavior: Clip.hardEdge,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16),
          //   ),
          //   child: Image.network(
          //     "https://cdn.pixabay.com/photo/2023/01/13/14/58/snake-7716269_1280.jpg",
          //     fit:BoxFit.cover,
          //     height:100,
          //     width: 100,
          //   ),
          // ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 1, vertical: 0.3),
            margin: EdgeInsets.only(left: 8),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dare to ', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
                Text('innovate ', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ), ),
                Text('with Gofit', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
