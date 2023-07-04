import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/Animation/animation_screen.dart';
import 'package:practise_flutter_ui/animation/animation_demo_screen.dart';
import 'package:practise_flutter_ui/animation/basic/animation_builder.dart';
import 'package:practise_flutter_ui/bmi_calculator/bmi_home_screen.dart';
import 'package:practise_flutter_ui/food_delivery/food_first_page_screen.dart';
import 'package:practise_flutter_ui/material3_design/screens/new_desgin_screen.dart';
import 'package:practise_flutter_ui/mecon_ai/screens/mecon_ai_login_page.dart';
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
          if (kDebugMode) {
            print('log');
          }
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AnimationScreen()));
        },
        text: 'Animation',
      ),
      CardWidget(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const FirstFoodScreen()));
        },
        text: 'Food Delivery',
      ),
      CardWidget(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const SimpleHomePageUI()));
        },
        text: 'Simple UI',
      ),
      CardWidget(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const CardHomePage()));
        },
        text: 'Card UI',
      ),
      CardWidget(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const MeconLoginScreen()));
        },
        text: 'Mecon Ai',
      ),
      CardWidget(
          text: 'Animation',
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => AnimationDemo()));
          }),
      CardWidget(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const BmiHomScreen()));
        },
        text: 'Bmi_calculator',
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
