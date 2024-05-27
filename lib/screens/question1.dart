import 'package:AppDevFinal/models/models.dart';
import 'package:AppDevFinal/providers/product_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CategoryFilter { processing, shipped, returns, cancelled, completed }

class Question1 extends ConsumerWidget {
  Question1({super.key});
  
  CategoryFilter filter = CategoryFilter.processing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Product>> temp = ref.watch(getProductProvider);
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
          // Wrap(
          //   spacing: 5.0,
          //   children: CategoryFilter.values.map((CategoryFilter exercise) {
          //     return FilterChip(
          //       label: Text(exercise.name),
          //       selected: filter == exercise,
          //       onSelected: (bool selected) {
          //         // setState(() {
          //         //   if (selected) {
          //         //     filters.add(exercise);
          //         //   } else {
          //         //     filters.remove(exercise);
          //         //   }
          //         // });
          //       },
          //     );
          //   }).toList(),
          // ),
          Expanded(
              child: temp.when(
            data: (value) => ListView.builder(
              itemBuilder: (ctx, idx) => ListTile(
                title: Text(value[idx].name ?? "Hello"),
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
