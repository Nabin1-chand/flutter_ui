import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiHomScreen extends StatelessWidget {
  const BmiHomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ResuableCard(
                      title: 'MALE',
                      iconData: FontAwesomeIcons.mars,
                    ),
                  ),
                  Expanded(
                    child: ResuableCard(
                      title: 'FEMALE',
                      iconData: FontAwesomeIcons.venus,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ResuableCard extends StatelessWidget {
  final IconData iconData;
  final String title;
  const ResuableCard({
    super.key,
    required this.iconData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            Icon(
              iconData,
              size: 80.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Color(0xff8D8E98)),
            )
          ],
        ),
      ),
    );
  }
}
