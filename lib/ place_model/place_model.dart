

class PlaceModel {
  final String name;
  final String location;
  final String description;
  final String imageUrl;
  final String detailedDescription;

  PlaceModel({
    required this.name,
    required this.location,
    required this.description,
    required this.imageUrl,
    required this.detailedDescription,
  });

  factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
      name: json['name'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      detailedDescription: json['detailedDescription'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'location': location,
      'description': description,
      'imageUrl': imageUrl,
      'detailedDescription': detailedDescription,
    };
  }
}