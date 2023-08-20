

import 'package:flutter/material.dart';
import 'package:flutter_session4/reusable%20widget/contact_card.dart';

import '../model/contact.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({Key? key}) : super(key: key);

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43,60,81,),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43,60,81,),
        elevation: 0,
        title: Text("Contacts"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ...contacts.map((contact) => ContactCard(contact: contact, onChange: (){setState(() {

            });},)).toList(),
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor:  Color.fromARGB(255,10,232,232),
        child: Icon(Icons.add, color: Colors.black,),
        onPressed: (){},

      ),
    );
  }
}
