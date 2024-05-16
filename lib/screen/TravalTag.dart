import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/wigets/Travaltag.dart/SearchBartravel.dart';
import 'package:flutter_application_1/wigets/Travaltag.dart/SmallCard.dart';

class TravelTag extends StatelessWidget {
  const TravelTag({super.key});
  
  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipOval(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWHCkpLir915yNJ0c5I9BSdzKvQYty2cPbKYDxW5FlDw&s"
           ,height:30, 
           width: 30,
           fit: BoxFit.cover,))
               ],
        title:  Container(
                width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text('Discovery', style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold,
               )),
              Text('You are at Bhutan', style: TextStyle( fontSize: 14,)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBartravel(),
            SmallCard(),
            // RecommendedPlants(),
            // RecentlyReviewed(),
            // LatestProducts()
          ],
        ),
      ),
    );
  }
}