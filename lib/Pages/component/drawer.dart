
import 'package:flutter/material.dart';
import 'package:resturant/Pages/component/drawer_titels.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(115, 13, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140.0),
            child: Icon(Icons.lock,size: 100,color: const Color.fromARGB(255, 251, 247, 247),),
          ),
        
          MyDrawerTitles(text: "Home", icon: Icons.home, onTap: ()=>Navigator.pop(context)),
          MyDrawerTitles(text: "Setting", icon: Icons.settings, onTap: (){}),
          MyDrawerTitles(text: "Privacy", icon: Icons.privacy_tip, onTap: (){}),
          MyDrawerTitles(text: "Contact", icon: Icons.phone, onTap: (){}),
          MyDrawerTitles(text: "About Us", icon: Icons.info, onTap: (){}),
          MyDrawerTitles(text: "Help", icon: Icons.help, onTap: (){}),
          MyDrawerTitles(text: "Feedback", icon: Icons.feedback, onTap: (){}),
          MyDrawerTitles(text: "Logout", icon: Icons.logout, onTap: (){}),

        ],
      ),
    );
  }
}