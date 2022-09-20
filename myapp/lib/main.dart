import 'package:flutter/material.dart';
import 'package:myapp/screens/Home.dart';
import 'screens/Home.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
