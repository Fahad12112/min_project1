
import 'package:flutter/material.dart';
import 'package:min_project1/ place_model/place_model.dart';
import 'package:min_project1/app_colors/app_colors.dart';
import 'package:min_project1/app_spacing/app_spacing.dart';
import 'package:min_project1/screen_size_extension/screen_size_extension.dart';

class DetailScreen extends StatelessWidget {
  final PlaceModel place;

  const DetailScreen({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: AppColors.primaryBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              place.imageUrl,
              width: context.screenWidth,
              height: context.widthPercent(70),
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: context.screenWidth,
                  height: context.widthPercent(70),
                  color: AppColors.grey300,
                  child: const Icon(Icons.image, size: 80),
                );
              },
            ),

            AppSpacing.vertical20,

            Padding(
              padding: AppSpacing.paddingAll15,
              child: Text(
                place.name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: AppSpacing.paddingHorizontal15,
              child: Row(
                children: [
                  const Icon(Icons.location_on, color: AppColors.primaryRed),
                  AppSpacing.horizontal5,
                  Text(
                    place.location,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),

            AppSpacing.vertical20,

            Padding(
              padding: AppSpacing.paddingAll15,
              child: Container(
                padding: AppSpacing.paddingAll15,
                decoration: BoxDecoration(
                  color: AppColors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  place.detailedDescription,
                  style: const TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ),

            AppSpacing.vertical20,

            Padding(
              padding: AppSpacing.paddingHorizontal15,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Saved successfully!')),
                    );
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: AppColors.textWhite,
                  ),
                  label: const Text(
                    'Save Place',
                    style: TextStyle(color: AppColors.textWhite),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryRed,
                  ),
                ),
              ),
            ),

            AppSpacing.vertical30,
          ],
        ),
      ),
    );
  }
}