import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:practise_flutter_ui/mecon_ai/screens/mecon_home_screen.dart';

class MeconLoginScreen extends StatelessWidget {
  const MeconLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.person_add_alt,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'MECON.AI',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 189, 29, 17)),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Try  Mecon today to  streamline your mettings and  unlock the power of AI-driven meeting notes.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 160,
              ),
              CustomBottomWidget(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const MeconHomeScreen()));
                },
                width: 30,
                image:
                    'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                imageHeight: 50,
                text: 'Continue with Google',
                backgroundColor: const Color.fromARGB(255, 190, 168, 168),
                color: Colors.black,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomBottomWidget(
                onTap: () {},
                width: 30,
                image:
                    'https://cdn-icons-png.flaticon.com/512/1077/1077041.png',
                imageHeight: 50,
                imageColor: Colors.white,
                text: 'Continue with FaceBook',
                backgroundColor: Colors.black,
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: RichText(
                      text: TextSpan(
                          text: 'New to Mecon?',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 87, 66, 66)),
                          children: [
                        TextSpan(
                            text: 'Create account',
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 173, 70, 63),
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottomWidget extends StatelessWidget {
  final double? containerHeight;
  final Function() onTap;
  final double? imageHeight;
  final Color? imageColor;
  final double? width;
  final Color? backgroundColor;
  final Color? color;
  final String? text;
  final String? image;
  const CustomBottomWidget(
      {super.key,
      this.image,
      this.text,
      this.color,
      this.backgroundColor,
      this.width,
      this.imageColor,
      this.imageHeight,
      this.containerHeight,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
          // style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              SizedBox(width: width),
              Image(
                  color: imageColor,
                  height: imageHeight,
                  fit: BoxFit.cover,
                  image: NetworkImage(image!)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  text!,
                  style: TextStyle(fontSize: 16, color: color),
                ),
              )
            ],
          )),
    );
  }
}
