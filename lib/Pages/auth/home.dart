import 'package:flutter/material.dart';
import 'package:resturant/Pages/component/drawer.dart';
import 'package:resturant/Pages/component/drawer_titels.dart';
import 'package:resturant/Pages/component/sliverApp.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled)=>[
        Sliver(child: Text("home"), title: Text("data"))
      ],
       body: Container(
        color: Colors.deepOrange,
       ))
    );
  }
}