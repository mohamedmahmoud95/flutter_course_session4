import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43,60,81,),
        title: const Text("Profile screen"),
      ),

      body: Center(
        child: Icon(Icons.person_rounded, size: 200, color: Color.fromARGB(255, 43,60,81,),),
      ),
    );
  }
}
