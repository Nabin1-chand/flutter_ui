import 'package:flutter/material.dart';

class TweenSequenceDemo extends StatefulWidget {
  const TweenSequenceDemo({super.key});

  @override
  State<TweenSequenceDemo> createState() => _TweenSequenceDemoState();
}

class _TweenSequenceDemoState extends State<TweenSequenceDemo> {
  static const Duration duration = Duration(seconds: 3);
  late final AnimationController controller;
  late final Animation<Color?> animation;
  static final colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  // static final data = [1, 2, 3, 4, 5, 6, 7];
  @override
  void initState() {
    super.initState();
    // final sequenceItems = <TweenSequenceItem<Color?>>[];
    // for (var i = 0; i < colors.length; i++) {
    //   final beginColor = colors[i];
    //   final endColor = colors[(i + 1) % colors.length];
    //   final weight = 1 / colors.length;
    // }
    List numbers = [10, 20, 50, 30, 40];
    numbers.sort((a, b) => b.compareTo(a));
    print(numbers);
    final myList = [10, '', '', null, 20, 0, 40, 50, false];

    myList.removeWhere((element) => ["", null, false].contains(element));
    print(myList);
    List myData = ["Rick", "", "John", "", "", "Carol", "Saisha"];
    List result = [];
    for (var item in myData) {
      if (!item.isEmpty) {
        result.add(item);
      }
    }
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
