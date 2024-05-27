import 'package:AppDevFinal/providers/check_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<String>> temp = ref.watch(testsProvider);
    return SafeArea(
        child: Theme(
          data: ThemeData(),
          child: Scaffold(
              appBar: AppBar(),
              body: temp.when(
                data: (value) => ListView.builder(
                  itemBuilder: (ctx, idx) => ListTile(
                    title: Text(value[idx]),
                  ),
                  itemCount: value.length,
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stk) => Center(child: Text(err.toString())),
              )),
        ));
  }
}
