import 'package:flutter/material.dart';
class Sliver extends StatelessWidget {
  final Widget child;
  final Widget title;
   Sliver({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 400,
      collapsedHeight: 100,
      floating: true,
      pinned: false,
      snap: false,
      backgroundColor: Colors.blue,
      
      title: const Text("Restaurant"),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0, bottom: 0, right: 0),
        expandedTitleScale: 1.5,
      ),
    );
  }
}
