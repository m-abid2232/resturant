import 'package:flutter/material.dart';
import 'package:resturant/Pages/component/drawer.dart';
import 'package:resturant/Pages/component/drawer_titels.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          children: [
           
          ],
        )

      ),
    );
  }
}