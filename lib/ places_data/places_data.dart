// lib/data/places_data.dart

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:min_project1/ place_model/place_model.dart';

// Global list of places
List<PlaceModel> globalPlacesList = [];

// Function to load places from JSON using fromJson method
Future<void> loadPlacesData() async {
  try {
    // Load JSON file from assets
    final String jsonString = await rootBundle.loadString('assets/data/places.json');

    // Parse JSON string to List
    final List<dynamic> jsonList = json.decode(jsonString);

    // Convert each JSON object to PlaceModel using fromJson
    globalPlacesList = jsonList.map((json) => PlaceModel.fromJson(json)).toList();

    print('✅ Successfully loaded ${globalPlacesList.length} places from JSON');
  } catch (e) {
    print('❌ Error loading places data: $e');

    // Fallback: Create hardcoded data if JSON fails to load
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