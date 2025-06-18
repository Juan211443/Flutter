import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
        ],
      ),
    );
  }
}
