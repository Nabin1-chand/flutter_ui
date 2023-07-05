import 'dart:math';

import 'package:flutter/material.dart';

class Typewritertween extends Tween<String> {
  Typewritertween({String begin = '', String end = ''})
      : super(begin: begin, end: end);
  @override
  String lerp(double t) {
    var cutoff = (end!.length * t).round();
    return end!.substring(0, cutoff);
  }
}

class CustomTweenDemo extends StatefulWidget {
  const CustomTweenDemo({super.key});

  @override
  State<CustomTweenDemo> createState() => _CustomTweenDemoState();
}

class _CustomTweenDemoState extends State<CustomTweenDemo>
    with SingleTickerProviderStateMixin {
  static const Duration _duration = Duration(seconds: 3);
  static const String message = loremIpsum;
  late final AnimationController controller;
  late final Animation<String> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _duration);
    animation = Typewritertween(end: message).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom  Tween'),
        actions: [
          TextButton(
              onPressed: () {
                if (controller.status == AnimationStatus.completed) {
                  controller.reverse().whenComplete(() {
                    setState(() {});
                  });
                } else {
                  controller.forward().whenComplete(() {
                    setState(() {});
                  });
                }
              },
              child: Text(controller.status == AnimationStatus.completed
                  ? 'Delete Essay'
                  : 'Write Essay'))
        ],
      ),
      body: SafeArea(
          child: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    child: AnimatedBuilder(
                        animation: animation,
                        builder: (context, child) {
                          return Text(animation.value,
                              style: TextStyle(
                                fontSize: 16,
                              ));
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

const String loremIpsum = '''
Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium
doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore
veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim
ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia
consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque
porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur
adipisci[ng] velit, sed quia non-numquam [do] eius modi tempora inci[di]dunt, ut
labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam,
quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut
aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in
ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui
dolorem eum fugiat, quo voluptas nulla pariatur?
''';
