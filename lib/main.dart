import 'package:flutter/material.dart';
import 'addcontectscreen.dart';
import 'allcontectscreen.dart';
import 'editcontectscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactDetailsScreen()
    );
  }
}

