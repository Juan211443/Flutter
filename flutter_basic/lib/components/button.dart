import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            if (kDebugMode) {
              print("Pulsado");
            }
          },
          onLongPress: () {
            if (kDebugMode) {
              print("Mantiene pulsado");
            }
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 190, 90, 54),
            ),
          ),
          child: Text("Boton"),
        ),
        OutlinedButton(onPressed: null, child: Text("OutlinedButton")),
        TextButton(onPressed: null, child: Text("TextButton")),
        FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        Spacer(),
      ],
    );
  }
}
