import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/animation/basic/animated_container.dart';
import 'package:practise_flutter_ui/animation/basic/animation_builder.dart';
import 'package:practise_flutter_ui/animation/basic/animation_controller.dart';
import 'package:practise_flutter_ui/animation/basic/custom_tween.dart';
import 'package:practise_flutter_ui/animation/basic/tween_sequence.dart';

class Demo {
  final String name;
  final Widget pageToNavigate;

  Demo({required this.name, required this.pageToNavigate});
}

final basicDemo = [
  Demo(
    name: 'Animation Builder',
    pageToNavigate: const AnimationBuilderDemo(),
  ),
  Demo(name: 'Animated Container', pageToNavigate: AnimatedContainerDemo()),
  Demo(
      name: 'Animation Controller ', pageToNavigate: AnimationControllerDemo()),
  Demo(name: 'Custom Tween', pageToNavigate: CustomTweenDemo()),
  Demo(name: 'Tween Sequence', pageToNavigate: TweenSequenceDemo())
];

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Sample'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Bacis',
              style: headerStyle,
            ),
          ),
          ...basicDemo.map((d) => DemoTile(demo: d))
        ],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo demo;
  const DemoTile({super.key, required this.demo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListTile(
          title: Text(demo.name),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => demo.pageToNavigate));
          },
        ),
      ),
    );
  }
}
