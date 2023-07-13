import 'package:flutter/material.dart';

class GridUsingColumnRow extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final int columns;
  final double? leftPadding;

  ///THIS NESTED LOOP WIDGET IS BETTER THAN GRIDVIEW BECAUSE
  ///WE CAN USE "IntrinsicHeight Widget" FOR EACH ROW
  ///This class will be deprecated once Custom GridView is made which auto calculate height,
  ///because this way may crash app in large data
  const GridUsingColumnRow({
    required this.itemBuilder,
    required this.itemCount,
    this.columns = 2,
    this.leftPadding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reminder = itemCount % columns;
    return Column(
      children: [
        for (int i = 0; i < itemCount; i = i + columns)
          IntrinsicHeight(
            child: Row(
              children: [
                for (int j = 0; j < columns; j++) ...[
                  Expanded(
                    child: Builder(builder: (context) {
                      int index = i + j;
                      try {
                        return itemBuilder(context, index);
                      } catch (e) {
                        return const SizedBox();
                      }
                    }),
                  ),
                  columns > 0 && j % columns == 0
                      ? SizedBox(
                          width: leftPadding ?? 15,
                        )
                      : const SizedBox(),
                ],
              ],
            ),
          ),
        for (var j = 0; j < reminder; j++) ...[
          const SizedBox.shrink(),
        ]
      ],
    );
  }
}
