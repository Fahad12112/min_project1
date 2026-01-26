
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;

  const DetailScreen({
    Key? key,
    required this.name,
    required this.location,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.7,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.7,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, size: 80),
                );
              },
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.red),
                  const SizedBox(width: 5),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'This is an amazing tourist place worth visiting! You can spend a great time here and experience the local culture.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Saved successfully!')),
                    );
                  },
                  icon: const Icon(Icons.favorite, color: Colors.white),
                  label: const Text(
                    'Save Place',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}