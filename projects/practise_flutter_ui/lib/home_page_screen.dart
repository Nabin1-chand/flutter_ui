import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/Animation/animation_screen.dart';
import 'package:practise_flutter_ui/food_delivery/food_first_page_screen.dart';
import 'package:practise_flutter_ui/simple_ui/simple_home%20_page%20_ui.dart';
import 'package:practise_flutter_ui/stack_card_ui/screens/card_home_page_screen.dart';
import 'package:practise_flutter_ui/widget/card_widget.dart';
import 'package:practise_flutter_ui/widget/custom_grid_view.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      CardWidget(
        onTap: () {
          print('log');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimationScreen()));
        },
        text: 'Animation',
      ),
      CardWidget(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => FirstFoodScreen()));
        },
        text: 'Food Delivery',
      ),
      CardWidget(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SimpleHomePageUI()));
        },
        text: 'Simple UI',
      ),
      CardWidget(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => CardHomePage()));
        },
        text: 'Card UI',
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: GridUsingColumnRow(
          columns: 3,
          itemBuilder: (BuildContext context, int index) => list[index],
          itemCount: list.length,
        ),
      ),
    );
  }
}
