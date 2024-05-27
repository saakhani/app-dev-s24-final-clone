import 'package:cloud_firestore/cloud_firestore.dart';



class Product {
  String? color;
  String? imgurl;
  String? name;
  num? numItems;
  num? price;
  num? size;
  String? status;
  bool? finished;

  Product({required this.finished, required this.color, required this.imgurl, required this.name, required this.numItems, required this.price, required this.size, required this.status});

  factory Product.fromQuerySnapshot(QueryDocumentSnapshot doc) {
    final Map<String, dynamic> json = doc.data() as Map<String, dynamic>;
    return Product(
      name: json['name'] as String,
      color: json['color'] as String,
      size: json['size'] as int,
      price: json['price'] as double,
      status: json['status'] as String,
      finished: json['finished'] as bool,
      numItems: json['numItems'] as int,
      imgurl: json['imgurl'] as String,
    );
  }
}
