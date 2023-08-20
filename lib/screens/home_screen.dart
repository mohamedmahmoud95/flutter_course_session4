import 'package:flutter/material.dart';
import 'package:flutter_session4/screens/contact_list_screen.dart';
import 'package:flutter_session4/screens/profile_screen.dart';
import 'package:flutter_session4/screens/settings_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43,60,81,),
        title: const Text("Home screen"),
      ),

      body: Center(
        child: Icon(Icons.home_rounded, size: 200, color: Color.fromARGB(255, 43,60,81,),),
      ),


      drawer: Drawer(
        child: Column(
          children: [


            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsScreen()));

              },
              child: Container(
                height: 160,
                color:  Color.fromARGB(255, 43,60,81,),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 50,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            foregroundImage: AssetImage("assets/mohamed_mahmoud.jpg"),
                          ),

                          SizedBox(width: 20,),

                          Expanded(
                            child: Text("Mohamed Mahmoud",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),),
                          ),

                       // Icon(Icons.settings, color: Colors.white, size: 50,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),


           const SizedBox(height: 20,),
            ListTile(
              title: const Text("Home Screen",
                style: TextStyle(
                    fontSize: 20
                ),),
              trailing: const Icon(Icons.home_rounded, size: 30, color: Color.fromARGB(255,10,232,232),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),

            const Divider(color: Colors.blue,),

            ListTile(
              title: const Text("Contacts Screen",
                style: TextStyle(
                    fontSize: 20
                ),),
              trailing: const Icon(Icons.contacts, size: 30, color: Color.fromARGB(255,10,232,232)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactListScreen()));
              },
            ),

            const Divider(color: Colors.blue,),


            ListTile(
              title: const Text("Profile Screen",
              style: TextStyle(
                fontSize: 20
              ),),
              trailing: const Icon(Icons.person, size: 30, color: Color.fromARGB(255,10,232,232)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),

            const Divider(color: Colors.blue,),

            ListTile(
              title: const Text("Settings Screen",
                style: TextStyle(
                    fontSize: 20
                ),),
              trailing: const Icon(Icons.settings_rounded, size: 30, color: Color.fromARGB(255,10,232,232)),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),

            const Divider(color: Colors.blue,),

            ListTile(
              title: const Text("Sign out",
                style: TextStyle(
                    fontSize: 20
                ),),
              trailing: const Icon(Icons.logout, size: 30,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            )
          ],
        ),
      ),
    );


  }
}
