import 'package:feedback/screens/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Feedback());
}

class Feedback extends StatelessWidget {
  const Feedback({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayuotScreen(),
    );
  }
}
