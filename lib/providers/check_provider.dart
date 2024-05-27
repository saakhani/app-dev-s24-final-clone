import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'check_provider.g.dart';

@riverpod
Future<List<String>> tests(TestsRef ref) {
  return TestService().getAllTests();
}

class TestService {
  Future<List<String>> getAllTests() async {
    final qs = await FirebaseFirestore.instance.collection('tests').get();
    List<String> tbr =
        qs.docs.first['items'].map<String>((doc) => doc as String).toList();
    return tbr;
  }
}
