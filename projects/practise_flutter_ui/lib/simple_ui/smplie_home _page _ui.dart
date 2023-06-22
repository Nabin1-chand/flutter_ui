import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practise_flutter_ui/simple_ui/widgets/custom_app_bar.dart';

class SimpleHomePageUI extends StatefulWidget {
  const SimpleHomePageUI({super.key});

  @override
  State<SimpleHomePageUI> createState() => _SimpleHomePageUIState();
}

class _SimpleHomePageUIState extends State<SimpleHomePageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(201, 198, 194, 1),
      appBar: const CustomAppBar(
        height: 120,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tuesday, 24 Aug'),
              SizedBox(
                height: 10,
              ),
              Text(
                'You Have 8',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Mettings  Today',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search event, meeting, etc...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 40,
                      )),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.5),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipOval(
                      child: Container(
                        height: 25,
                        width: 45,
                        color: Color.fromARGB(255, 228, 214, 214),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        child: Icon(
                          Icons.remove,
                          color: Color.fromARGB(255, 204, 204, 204),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
