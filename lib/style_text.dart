import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});
  @override
  Widget build(context) {
    return const Center(
      child: Text(
        'Hello, World 3!',
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
