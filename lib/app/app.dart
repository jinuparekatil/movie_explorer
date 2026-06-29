import 'package:flutter/material.dart';
import '../features/home/presentation/pages/home_page.dart';

class MovieExplorerApp extends StatelessWidget {
  const MovieExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Explorer',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
