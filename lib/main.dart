import 'package:flutter/material.dart';
import 'package:toku2_app/features/home/presentation/views/home_view.dart';

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

void main() {
  runApp(const TokuApp());
}
