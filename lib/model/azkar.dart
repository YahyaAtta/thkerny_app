class Azkar {
  late int id;
  late String category;
  late String audio;
  late String filename;
  late List array;
  Azkar({
    required this.id,
    required this.category,
    required this.audio,
    required this.filename,
    required this.array,
  });
}

Azkar? getAzkarList(Map<String, dynamic> map) => switch (map) {
  {
    "id": int id,
    "category": String category,
    "audio": String audio,
    "filename": String filename,
    "array": List array,
  } =>
    Azkar(
      id: id,
      category: category,
      audio: audio,
      filename: filename,
      array: array,
    ),
  _ => null,
};
