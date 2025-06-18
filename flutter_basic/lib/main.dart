import 'package:flutter/material.dart';
import 'package:flutter_basic/components/image.dart';
// import 'package:flutter_basic/components/button.dart';
// import 'package:flutter_basic/components/input_text.dart';
// import 'package:flutter_basic/components/text.dart';
// import 'package:flutter_basic/layouts/colummn.dart';
// import 'package:flutter_basic/layouts/rows.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First app tutorial"),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.accessibility)),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 202, 204, 63),
        body: ImageExample(),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
