import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/travel_landing.dart/distination_item.dart';
import 'package:flutter_application_1/wigets/travel_landing.dart/horizontal.dart';
import 'package:flutter_application_1/wigets/travel_landing.dart/section.dart';


class DiscoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 212, 212),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 229, 229),
        elevation: 0,
        title: Text(
          'Discovery',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/62/51/87/62518789d74e0ea06fd3f4d7b5155c24.jpg'), // Your avatar image URL
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.0),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You're in Prague",
                style: TextStyle(color: Color.fromARGB(255, 6, 70, 95)),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 173, 173),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: 'Where do you want to go',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SectionTitle(title: 'For you'),
              SizedBox(height: 8),
              HorizontalList(
                items: [
                  DestinationItem('Teide', 'Tenerife, SPN',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXY6x8KcsMuoQhQw8T0exJND2_AaFBp5PF-1lXusVjPA&s'), // Use URL for the image here
                  DestinationItem('Casa Batlló', 'Barcelona, SPN',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScbojFEjCKRwaFs4liwpACKdC7s174oRDOqPdE720zMw&s'), // Use URL for the image here
                  DestinationItem('Sagrada Familia', 'Madrid, SPN',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDsnxfkVvaLHePc3iPvmpbQzmzoSC677rhpVzBdHp-vw&s'), // Use URL for the image here
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('+ New trip'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SectionTitle(title: 'Top journeys'),
              SizedBox(height: 8),
              HorizontalList(
                items: [
                  DestinationItem('Destination 1', 'Location 1',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpq06vUKBFoUvLJz0tAUCrB17AREtkxpb7EG0akMhR4g&s'), // Use URL for the image here
                  DestinationItem('Destination 2', 'Location 2',
                      'https://media.cnn.com/api/v1/images/stellar/prod/190417162012-10-earth-beautiful-places.jpg?q=w_3101,h_1744,x_0,y_0,c_fill'), // Use URL for the image here
                  DestinationItem('Destination 3', 'Location 3',
                      'https://static.toiimg.com/photo/msid-87867224,width-96,height-65.cms'), // Use URL for the image here
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
