import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/Animation/animation_screen.dart';
import 'package:practise_flutter_ui/food_delivery/food_first_page_screen.dart';
import 'package:practise_flutter_ui/simple_ui/simple_home%20_page%20_ui.dart';
import 'package:practise_flutter_ui/stack_card_ui/screens/card_home_page_screen.dart';
import 'package:practise_flutter_ui/widget/card_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: CardWidget(
              onTap: () {
                print('log');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnimationScreen()));
              },
              text: 'Animation',
            ),
          ),
          Expanded(
            child: CardWidget(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FirstFoodScreen()));
              },
              text: 'Food Delivery',
            ),
          ),
          Expanded(
            child: CardWidget(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SimpleHomePageUI()));
              },
              text: 'Simple UI',
            ),
          ),
          Expanded(
            child: CardWidget(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CardHomePage()));
              },
              text: 'Card UI',
            ),
          ),
          Expanded(
            child: CardWidget(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CardHomePage()));
              },
              text: 'Card UI',
            ),
          ),
        ],
      ),
    ));
  }
}
