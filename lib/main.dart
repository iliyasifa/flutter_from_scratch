import 'package:flutter/material.dart';
import 'package:flutter_from_scratch/Quiz/quiz.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Application'),
        ),
        body: Quiz(),
      ),
    );
  }
}
