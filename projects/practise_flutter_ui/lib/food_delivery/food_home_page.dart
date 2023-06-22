import 'package:flutter/material.dart';

class FoodHomescreen extends StatefulWidget {
  const FoodHomescreen({super.key});

  @override
  State<FoodHomescreen> createState() => _FoodHomescreenState();
}

class _FoodHomescreenState extends State<FoodHomescreen> {
  List<String> categories = ['Pizza', 'Burgers', 'Desert', 'Salad', 'kebab'];

  List<dynamic> food = [
    {
      "images": "assets/images/one.jpg",
      "isFavorite": false,
    },
    {
      "images": "assets/images/two.jpg",
      "isFavorite": false,
    },
    {
      "images": "assets/images/three.jpg",
      "isFavorite": false,
    }
  ];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: Icon(null),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey[800],
              ))
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Food Delivery',
            style: TextStyle(
                fontSize: 30,
                color: Colors.grey[80],
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeCategory(title: 'pizza'),
                makeCategory(title: 'Burger'),
                makeCategory(title: 'Pizzzaa')
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget makeCategory({title}) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(),
      child: Center(
        child: Text(
          title,
        ),
      ),
    );
  }
}
