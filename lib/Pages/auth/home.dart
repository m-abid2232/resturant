import 'package:flutter/material.dart';
import 'package:resturant/Pages/component/Current_location.dart';
import 'package:resturant/Pages/component/description.dart';
import 'package:resturant/Pages/component/drawer.dart';        
import 'package:resturant/Pages/component/sliverApp.dart';
import 'package:resturant/Pages/component/tab.dart';
import 'package:resturant/Pages/model/food.dart';


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
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
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
         
         title:  MyTabBar(tabController: _tabController),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black54,
              ),
              MyLocation(),
              Description(),
            ],
          )
         ),
      ],
       body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
               itemCount: 8,
              itemBuilder: (context,index)=> Text("tab 1 index"),
           
            ),
            ListView.builder(
               itemCount: 8,
              itemBuilder: (context,index)=> Text("tab 1 index"),
            
            ),
            ListView.builder(
               itemCount: 8,
              itemBuilder: (context,index)=> Text("tab 1 index"),
           
            ),
           
          ],
        ),
      ),
    );
  }
}