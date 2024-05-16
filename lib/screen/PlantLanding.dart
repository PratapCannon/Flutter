import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/plant_landing.dart/LatestProducts.dart';
import 'package:flutter_application_1/wigets/plant_landing.dart/RecentlyReviewed.dart';
import 'package:flutter_application_1/wigets/plant_landing.dart/RecomendedPlants.dart';
import 'package:flutter_application_1/wigets/plant_landing.dart/SearchBar.Plant.dart';

class PlantLanding extends StatelessWidget {
  const PlantLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discovery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarPlant(),
            RecommendedPlants(),
            RecentlyReviewed(),
            LatestProducts()
          ],
        ),
      ),
    );
  }
}