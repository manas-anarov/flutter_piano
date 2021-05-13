import 'package:flutter/material.dart';
import 'package:flutter_piano/app/ui/custom_piano.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CostumPiano(),
    );
  }
}
