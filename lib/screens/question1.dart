import 'package:AppDevFinal/providers/check_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Question1 extends ConsumerWidget {
  const Question1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<String>> temp = ref.watch(testsProvider);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              labelText: "Serach shoes...",
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30)),
              filled: true,
              fillColor: Colors.grey.shade300,
            ),
          ),
          Expanded(
              child: temp.when(
            data: (value) => ListView.builder(
              itemBuilder: (ctx, idx) => ListTile(
                title: Text(value[idx]),
              ),
              itemCount: value.length,
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stk) => Center(child: Text(err.toString())),
          )),
        ],
      ),
    ));
  }
}
