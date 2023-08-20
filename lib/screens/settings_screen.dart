import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43,60,81,),
        title: const Text("Settings screen"),
      ),

      body: const Center(
        child: Icon(Icons.settings_rounded, size: 200, color: Color.fromARGB(255, 43,60,81,)),
      ),
    );
  }
}
