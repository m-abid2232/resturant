import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all()
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 20,bottom: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('\$56'),
              Text("Delivery Fee")
            ],
          ),
          Column(
            children: [
              Text('15-30 mint'),
              Text("Deleviry Time ")
            ],
          )
        ],
      ),
    );
  }
}