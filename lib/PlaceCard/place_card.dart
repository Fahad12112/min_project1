
import 'package:flutter/material.dart';
import 'package:min_project1/DetailScreen/DetailScreen.dart';

class PlaceCard extends StatelessWidget {
  final String name;
  final String location;
  final String description;
  final String imageUrl;

  const PlaceCard({
    Key? key,
    required this.name,
    required this.location,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.5,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.5,
                color: Colors.grey[300],
                child: const Icon(Icons.image, size: 50),
              );
            },
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              location,
              style: const TextStyle(color: Colors.grey),
            ),
          ),

          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(description),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        name: name,
                        location: location,
                        imageUrl: imageUrl,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Explore',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}