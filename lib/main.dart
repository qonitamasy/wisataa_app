import 'package:flutter/material.dart';
import 'package:wisataa_app/data/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const home(),
    );
  }
}

