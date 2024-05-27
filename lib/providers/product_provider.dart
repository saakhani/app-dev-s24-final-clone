import 'package:AppDevFinal/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

@riverpod
Future<List<Product>> getProduct(GetProductRef ref) {
  return ProductService().getAllListingsFromFirestore();
}

class ProductService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<List<Product>> getAllListingsFromFirestore() async {
    QuerySnapshot snapshot = await _firestore.collection('category').get();
    return snapshot.docs.map((doc) => Product.fromQuerySnapshot(doc)).toList();
  }
}
