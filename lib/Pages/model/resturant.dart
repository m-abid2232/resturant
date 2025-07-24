import 'package:resturant/Pages/model/food.dart';

class Resturant {

  List<food> _menu =[
    // for burger
    food(
      name: "Cheese Burger",
      description: "A delicious cheese burger with fresh ingredients.",
      imagePath: "lib/image/burger.jpeg",
      price: 5.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.00),
        Addon(name: "Bacon", price: 1.50),
      ],
    ),
 food(
  name: "Caesar Salad", 
  description: "A fresh Caesar salad with crispy lettuce and dressing.", 
  imagePath: "lib/image/salad.jpeg",
   price: 800,
   category: FoodCategory.salad, 
   availableAddons: [
     Addon(name: "Croutons", price: 0.50),
     Addon(name: "Grilled Chicken", price: 2.00),]),
    //for dessert


    //for salad
  food(
    name:"Chocolate Cake", 
   description: "A rich chocolate cake with a creamy frosting.",
    imagePath: "lib/image/dessert.png",
    price: 4.99, 
    category: FoodCategory.dessert, 
    availableAddons: [
      Addon(name: "Ice Cream", price: 1.50),
      Addon(name: "Whipped Cream", price: 0.75),
    ]),
    
  

    //for cold drink
  food(name: "Lemonade",
   description: "A refreshing lemonade with a hint of mint.",
   imagePath: "lib/image/drink.jpeg",
   price: 2.99,
   category: FoodCategory.coldDrink,
   availableAddons: [
     Addon(name: "Extra Lemon", price: 0.50),
     Addon(name: "Mint Leaves", price: 0.75),
   ]),

    //for sides
  food(name: "French Fries",
   description: "Crispy golden French fries.",
   imagePath: "lib/image/sides.jpeg",
   price: 2.49,
   category: FoodCategory.sides,
   availableAddons: [
     Addon(name: "Ketchup", price: 0.25),
     Addon(name: "Cheese Sauce", price: 0.75),
   ]),

  ];

  List<food> get menu => _menu;
}