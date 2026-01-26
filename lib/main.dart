
import 'package:flutter/material.dart';
import 'package:min_project1/HomeScreen/HomeScreen.dart';
import 'package:min_project1/ places_data/places_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await loadPlacesData();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourist Places',
      home: const HomeScreen(),
    );
  }
}