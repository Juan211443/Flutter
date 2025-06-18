import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 86),
      child: Container(
        color: const Color.fromARGB(255, 76, 136, 185),
        // height: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Ejemplos"),
            // Spacer(),
            Expanded(child: Text("Ejemplos")),
            Text("Ejemplos"),
          ],
        ),
      ),
    );
  }
}
