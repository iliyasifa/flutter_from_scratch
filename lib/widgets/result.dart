import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;

  const Result({Key? key, required this.resetHandler}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Center(
            child: Text(
              'Yeah!!!!  You did it!!!!',
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text('You wanna try again'),
          ),
        ],
      ),
    );
  }
}
