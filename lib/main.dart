import 'package:counter_flutter_app/provider/counterProvider.dart';
import 'package:counter_flutter_app/views/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<CounterProvider>(
    create: (context) => CounterProvider(),
    builder: (context, _) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => const homePage(),
      },
    ),
  ));
}
