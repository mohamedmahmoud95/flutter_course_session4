import 'package:flutter/material.dart';

import '../model/contact.dart';

class ContactCard extends StatefulWidget {
  final Contact contact;
  final VoidCallback onChange;
  const ContactCard({Key? key, required this.contact, required this.onChange}) : super(key: key);

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 3),
      child: Card(
        color:  Color.fromARGB(255, 43,60,81,),

        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            foregroundImage: AssetImage("${widget.contact.imageUrl ?? 'assets/profile_image.png'}"),
          ),

          title: Text(widget.contact.name,
          style: TextStyle(
            color: Color.fromARGB(255,10,232,232),
            fontSize: 20,

          ),),
          subtitle: Text(widget.contact.phoneNumber,
            style: TextStyle(
              color: Colors.white,
                  fontSize: 16,
        ),),
          trailing: SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call, color: Color.fromARGB(255, 49,105,117)),
                IconButton(icon: Icon(Icons.delete, color: Color.fromARGB(255, 49,105,117),), onPressed: (){
                  setState(() {
                    contacts.remove(widget.contact);
                  });
                  widget.onChange();
                },),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
