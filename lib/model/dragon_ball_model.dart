class DragonBallModel {
  final int id;
  final String name;
  final String ki;
  final String race;
  final String gender;
  final String description;

  DragonBallModel({
    required this.id,
    required this.name,
    required this.ki,
    required this.race,
    required this.gender,
    required this.description,
  });

  factory DragonBallModel.fromJson(Map<String, dynamic> json) {
    return DragonBallModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Unknown',
      ki: json['ki'] ?? 'No ki',
      race: json['race'] ?? 'No race',
      gender: json['gender'] ?? 'Unknown',
      description: json['description'] ?? 'Unknown',
    );
  }
}
