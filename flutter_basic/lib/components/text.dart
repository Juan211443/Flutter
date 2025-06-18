import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text("Texto basico"),
        Text("Texto aumentado", style: TextStyle(fontSize: 20)),
        Text(
          "Texto con negrilla",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("Texto cursivo", style: TextStyle(fontStyle: FontStyle.italic)),
        Text(
          "Texto cursivo",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 15,
            backgroundColor: Color.fromARGB(255, 221, 24, 24),
          ),
        ),
        Text(
          "Texto decorado",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.yellow,
            color: Colors.purple,
          ),
        ),
        Text(
          "Espacio entre letras",
          style: TextStyle(fontSize: 20, letterSpacing: 20),
        ),
        Text(
          "Texto limitado limitado limitado limitado limitado limitado limitado limitado limitado limitado limitado limitado limitado limitado ",
          style: TextStyle(fontSize: 15),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
