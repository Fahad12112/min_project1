
import 'package:flutter/material.dart';
import 'package:min_project1/ place_model/place_model.dart';
import 'package:min_project1/DetailScreen/DetailScreen.dart';
import 'package:min_project1/app_colors/app_colors.dart';
import 'package:min_project1/app_spacing/app_spacing.dart';
import 'package:min_project1/navigation_extension/navigation_extension.dart';
import 'package:min_project1/screen_size_extension/screen_size_extension.dart';

class PlaceCard extends StatelessWidget {
  final PlaceModel place;

  const PlaceCard({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowGrey,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            place.imageUrl,
            width: context.screenWidth,
            height: context.widthPercent(50),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: context.screenWidth,
                height: context.widthPercent(50),
                color: AppColors.grey300,
                child: const Icon(Icons.image, size: 50),
              );
            },
          ),

          AppSpacing.vertical10,

          Padding(
            padding: AppSpacing.paddingHorizontal10,
            child: Text(
              place.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          AppSpacing.vertical5,

          Padding(
            padding: AppSpacing.paddingHorizontal10,
            child: Text(
              place.location,
              style: const TextStyle(color: AppColors.grey),
            ),
          ),

          AppSpacing.vertical5,

          Padding(
            padding: AppSpacing.paddingHorizontal10,
            child: Text(place.description),
          ),

          AppSpacing.vertical10,

          Padding(
            padding: AppSpacing.paddingAll10,
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  context.pushScreen(DetailScreen(place: place));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlue,
                ),
                child: const Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}