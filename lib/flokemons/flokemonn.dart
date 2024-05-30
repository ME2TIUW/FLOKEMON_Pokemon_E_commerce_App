class Flokemonn {
  int? flokemonid;
  String name;
  String description;
  String imagePath;
  int price;

  Flokemonn(
      {this.flokemonid,
      required this.name,
      required this.description,
      required this.imagePath,
      required this.price});

  factory Flokemonn.fromJson(Map<String, dynamic> json) {
    return Flokemonn(
      flokemonid: json['id'] as int?,
      name: json['name'] as String,
      description: json['description'] as String,
      imagePath: json['imagePath'] as String,
      price: json['price'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'flokemonid': flokemonid,
      'name': name,
      'description': description,
      'imagePath': imagePath,
      'price': price,
    };
  }
}
