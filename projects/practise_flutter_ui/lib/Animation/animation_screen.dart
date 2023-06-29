import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _helloAnimation;
  late Animation<Offset> _messageAnimation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    // _sizeAnimation =
    //     Tween<double>(begin: 50.0, end: 200.0).animate(_controller);
    _sizeAnimation = Tween<double>(begin: 50.0, end: 200.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.5, curve: Curves.decelerate)));
    _colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.red).animate(_controller);
    _helloAnimation =
        Tween<double>(begin: 20.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 0.7, curve: Curves.easeIn),
    ));
    _messageAnimation = Tween<Offset>(
      begin: const Offset(20.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7, 1.0, curve: Curves.ease)));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: Listenable.merge([
            _sizeAnimation,
            _colorAnimation,
          ]),
          child: SlideTransition(
            position: _messageAnimation,
            child: const Text('This is Aniamtion demo'),
          ),
          builder: (context, child) {
            return Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                    height: _sizeAnimation.value,
                    width: _sizeAnimation.value,
                    color: _colorAnimation.value ?? Colors.white,
                    child: FadeTransition(
                      opacity: _helloAnimation,
                      child: const Center(child: Text('Hello')),
                    )),
                child ?? const SizedBox(),
              ],
            );
          },
        ),
      ),
    ));
  }
}
