import 'package:flutter/material.dart';

class InputTextExample extends StatelessWidget {
  const InputTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 32),
        TextField(),
        SizedBox(height: 32),
        TextField(decoration: InputDecoration(hintText: "Email")),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 1,
            maxLength: 100,
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
