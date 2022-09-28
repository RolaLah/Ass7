import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/screens/Home.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
            icon: Icon(Icons.home),
            label: Text("Home")),
      ),
    );
  }
}
