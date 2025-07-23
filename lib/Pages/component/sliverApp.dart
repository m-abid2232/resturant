import 'package:flutter/material.dart';
class Sliver extends StatelessWidget {
  final Widget child;
  final Widget title;
   Sliver({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      collapsedHeight: 100,
      floating: true,
      pinned: false,
      snap: false,
      backgroundColor: Colors.blue,
      
      title: title,
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}
