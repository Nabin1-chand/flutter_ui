import 'package:flutter/material.dart';

class AnimationControllerDemo extends StatefulWidget {
  const AnimationControllerDemo({super.key});

  @override
  State<AnimationControllerDemo> createState() =>
      _AnimationControllerDemoState();
}

class _AnimationControllerDemoState extends State<AnimationControllerDemo>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  Duration _duration = Duration(seconds: 1);
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _duration)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child: Text(
                controller.value.toStringAsFixed(2),
                style: Theme.of(context).textTheme.displaySmall,
                textScaleFactor: 1 + controller.value,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  switch (controller.status) {
                    case AnimationStatus.completed:
                      controller.reverse();
                      break;
                    default:
                      controller.forward();
                  }
                },
                child: Text('animate'))
          ],
        ),
      ),
    );
  }
}
