class Product {
  int? id;
  String? name;
  String? username;

  Product({required this.id, required this.name, required this.username});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }
}