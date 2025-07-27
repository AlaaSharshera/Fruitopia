import 'package:flutter/material.dart';

void main() {
  runApp(const Fruitopia ());
}

class Fruitopia  extends StatelessWidget {
  const Fruitopia ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: const Scaffold(),
    );
  }
}

