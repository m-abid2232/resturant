import 'package:flutter/material.dart';
import 'package:resturant/Pages/component/drawer.dart';        
import 'package:resturant/Pages/component/sliverApp.dart';
import 'package:resturant/Pages/component/tab.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
@override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled)=>[
        Sliver(
          child:  MyTabBar(tabController: _tabController),
         title: Text("Cafe"),
         ),
      ],
       body: Container(
        color: Colors.deepOrange,
       ))
    );
  }
}