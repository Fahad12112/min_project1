
import 'package:flutter/material.dart';
import 'package:min_project1/PlaceCard/place_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover World'),
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          PlaceCard(
            name: 'Eiffel Tower',
            location: 'Paris, France',
            description: 'Famous iron tower in the heart of Paris',
            imageUrl: 'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=600',
          ),

          const SizedBox(height: 15),

          PlaceCard(
            name: 'Great Wall of China',
            location: 'Beijing, China',
            description: 'The longest wall in the world',
            imageUrl: 'https://images.unsplash.com/photo-1508804185872-d7badad00f7d?w=600',
          ),

          const SizedBox(height: 15),

          PlaceCard(
            name: 'Taj Mahal',
            location: 'Agra, India',
            description: 'Beautiful white marble building',
            imageUrl: 'https://images.unsplash.com/photo-1564507592333-c60657eea523?w=600',
          ),
        ],
      ),
    );
  }
}