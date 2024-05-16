
import 'package:flutter/material.dart';

class SearchBartravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 244, 244),
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.search),
          Text('Where do you want to go', style: TextStyle(color: Color.fromARGB(209, 104, 94, 94),)),
        ],
      ),
    );
  }
}
