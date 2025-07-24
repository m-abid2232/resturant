import 'package:flutter/material.dart';

class food{
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
    
  });
}
// Food Category Enum
  // This enum defines different categories of food items.
 enum FoodCategory{
    dessert,
    salad,
    coldDrink,
    burger,
    sides,
    
  }
  //adons
  // This class represents a food item with its name, description, image path, and price.
  class Addon {
 String name;
    double price;

    Addon({
      required this.name,
      required this.price,
    });
  }