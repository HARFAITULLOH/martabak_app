class Product {
  String name;
  String image;
  String taste;
  String id;
  int? total;

  Product(this.name, this.image, this.taste, this.id, {this.total});

  Product.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        image = json['image'],
        taste = json['taste'],
        id = json['id'],
        total = json['total'];

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "image": image,
      "taste": taste,
      "id": id,
      "total": total,
    };
  }
}
