class Resep{
  final String name;
  final String images;
  final String rating;
  final String totalTime;
  final String description;

  Resep(
    {required this.name, 
    required this.images,
    required this.rating, 
    required this.totalTime,
    required this.description});

factory Resep.fromJson(dynamic json) {
  return Resep(
    name: json['name'] as String,
    images: json['thumbnail_url'] as String,
    rating: json['country']as String,
    totalTime: json['total_time_minutes'] != null 
        ? json['total_time_minutes'].toString() + " minutes"
        : "30 menit",
        description: json['description'] != null ? json['description'] : "");
}

static List<Resep> resepFromSnapshot(List snapshot) {
  return snapshot.map((data) {
    return Resep.fromJson(data);
  }).toList();
}

@override
String toString() {
  return 'Resep {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
}

}