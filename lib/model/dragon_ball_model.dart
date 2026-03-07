class DragonBallModel {
  final int id;
  final String name;
  final String ki;
  final String maxKi;
  final String race;
  final String gender;
  final String description;

  DragonBallModel({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.description,
  });

  factory DragonBallModel.fromJson(Map<String, dynamic> json) => DragonBallModel(
    id: json["id"] ?? 0,
    name: json["name"] ?? "No name",
    ki: json["ki"] ?? "No ki",
    maxKi: json["maxKi"] ?? "No max ki",
    race: json["race"] ?? "No race",
    gender: json["gender"] ?? "No gender",
    description: json["description"] ?? "No description",
  );
}
