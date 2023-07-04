import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({
    required this.height,
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String dropdownvalue = 'August';
  List<String> items = ['August', 'b', 'c', 'd'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.preferredSize.height,
      child: Row(children: [
        const Icon(
          Icons.menu,
          size: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        DropdownButton(
          value: dropdownvalue,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
        const Spacer(),
        CircleAvatar(
            radius: 25,
            backgroundColor: const Color.fromARGB(255, 161, 143, 149),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: const Image(
                image: NetworkImage(
                  'https://content.fortune.com/wp-content/uploads/2018/07/gettyimages-961697338.jpg',
                ),
                height: 60,
                fit: BoxFit.cover,
              ),
            ))
      ]),
    );
  }
}
