import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});

  void openLocationSerchBox(BuildContext Context) {
    showDialog(context: Context,
    builder: (context) => AlertDialog(
      title: Text("Your Location"),
      icon: Icon(Icons.location_on_outlined),
      content: TextField(
        decoration: InputDecoration(hintText: ("Your Location")),
      ),
    actions: [
      MaterialButton(onPressed: ()=> Navigator.pop(context),
      child: Text("Cancel"),),
      MaterialButton(onPressed: ()=> Navigator.pop(context),
      child: Text("Save"),)
    ],
    ),
    
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Delivery Location"),
          GestureDetector(
            onTap:() => openLocationSerchBox(context),
            child: Row(
              children: [
                Text("Afridi Sport Complex"),
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}