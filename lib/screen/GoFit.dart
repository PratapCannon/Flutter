import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/wigets/GoFit.dart/GoFitNavBar.dart';
// import 'package:flutter_application_1/wigets/Travaltag.dart/SearchBartravel.dart';
// import 'package:flutter_application_1/wigets/Travaltag.dart/SmallCard.dart';


class GoFit extends StatelessWidget {
  const GoFit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipOval(child: 
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpak8vGK5yFtsuwFSHkoFjdbi5COyStmbkaahHRuC2Tg&s"
           ,height:30, 
           width: 30,
           fit: BoxFit.cover,))
               ],
        title:  Container(
      // padding: EdgeInsets.all(8),
      // margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Text(
            'G*Fit.',
            style: TextStyle(color: const Color.fromARGB(255, 39, 3, 3), 
            fontSize: 20, fontWeight: FontWeight.bold),
          ),
        
        ],
      ),
    ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GoFitNavBar(),
            // SearchBartravel(),
            // SmallCard(),
            // RecommendedPlants(),
            // RecentlyReviewed(),
            // LatestProducts()
          ],
        ),
      ),
    );
  }
}