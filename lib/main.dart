import 'package:flutter/material.dart';
import 'package:flutter_session4/screens/contact_list_screen.dart';
import 'package:flutter_session4/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //ContactListScreen(),
    );
  }
}