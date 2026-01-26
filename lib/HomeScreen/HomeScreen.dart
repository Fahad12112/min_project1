// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:min_project1/PlaceCard/place_card.dart';
import 'package:min_project1/ places_data/places_data.dart';
import 'package:min_project1/app_colors/app_colors.dart';
import 'package:min_project1/app_spacing/app_spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover World'),
        backgroundColor: AppColors.primaryBlue,
      ),
      body: globalPlacesList.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.separated(
        padding: AppSpacing.paddingAll10,
        itemCount: globalPlacesList.length,
        separatorBuilder: (context, index) => AppSpacing.vertical15,
        itemBuilder: (context, index) {
          return PlaceCard(place: globalPlacesList[index]);
        },
      ),
    );
  }
}