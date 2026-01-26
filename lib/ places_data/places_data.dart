
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:min_project1/ place_model/place_model.dart';

List<PlaceModel> globalPlacesList = [];

Future<void> loadPlacesData() async {
  try {
    final String jsonString = await rootBundle.loadString('assets/data/places.json');

    final List<dynamic> jsonList = json.decode(jsonString);

    globalPlacesList = jsonList.map((json) => PlaceModel.fromJson(json)).toList();

    print('✅ Successfully loaded ${globalPlacesList.length} places from JSON');
  } catch (e) {
    print('❌ Error loading places data: $e');

    globalPlacesList = [
      PlaceModel(
        name: 'Eiffel Tower',
        location: 'Paris, France',
        description: 'Famous iron tower in the heart of Paris',
        imageUrl: 'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=600',
        detailedDescription: 'This is an amazing tourist place worth visiting! You can spend a great time here and experience the local culture.',
      ),
      PlaceModel(
        name: 'Great Wall of China',
        location: 'Beijing, China',
        description: 'The longest wall in the world',
        imageUrl: 'https://images.unsplash.com/photo-1508804185872-d7badad00f7d?w=600',
        detailedDescription: 'This is an amazing tourist place worth visiting! You can spend a great time here and experience the local culture.',
      ),
      PlaceModel(
        name: 'Taj Mahal',
        location: 'Agra, India',
        description: 'Beautiful white marble building',
        imageUrl: 'https://images.unsplash.com/photo-1564507592333-c60657eea523?w=600',
        detailedDescription: 'This is an amazing tourist place worth visiting! You can spend a great time here and experience the local culture.',
      ),
    ];
  }
}