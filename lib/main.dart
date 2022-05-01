import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/screens/list_of_examples_screen.dart';

final helloWorldProvider = Provider((_) => 'Hello Smart');

final myProvider = Provider((ref) {
  return "Smart";
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    return MaterialApp(
      title: 'Riverpod Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExamplesScreen(),
    );
  }
}

