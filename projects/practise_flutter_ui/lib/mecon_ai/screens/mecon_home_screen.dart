import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/mecon_ai/screens/mecon_ai_login_page.dart';
import 'package:practise_flutter_ui/mecon_ai/screens/mecon_meeting_screen.dart';

class MeconHomeScreen extends StatelessWidget {
  const MeconHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Good morning  Nabin',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Text('Ready for meeting at Metcon?')
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notification_add_outlined,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 161, 147, 147),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('On going'),
                        Text('Upcomming'),
                        Text('Ended')
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const CustomContianerWidget(
                        color: Color.fromARGB(255, 221, 160, 180),
                      ),
                      const Align(
                        heightFactor: .5,
                        child: CustomContianerWidget(
                          color: Color.fromARGB(255, 221, 160, 180),
                        ),
                      ),
                      const Align(
                        heightFactor: 1,
                        child: CustomContianerWidget(
                          // height: 200,
                          color: Colors.black,
                        ),
                      ),
                      Align(
                          heightFactor: 0.75,
                          child: Container(
                            height: 350,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 150, 171, 209),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 5,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                          'Jan, 16th 2023\n1:00 PM - 3:00 PM'),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.white),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Recap ready!',
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Daily sprint-week 2-Kendats Projects ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text('Pickolab meeting room'),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CustomBottomWidget(
                                    width: 50,
                                    backgroundColor: Colors.black,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const MeconMeetingScreen()));
                                    },
                                    image:
                                        'https://cdn-icons-png.flaticon.com/512/7961/7961223.png',
                                    imageHeight: 40,
                                    imageColor: Colors.white,
                                    text: 'Replay meeting',
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CustomBottomWidget(
                                    width: 50,
                                    backgroundColor: Colors.black,
                                    onTap: () {},
                                    image:
                                        'https://cdn-icons-png.flaticon.com/512/7961/7961223.png',
                                    imageHeight: 40,
                                    imageColor: Colors.white,
                                    text: 'See recap',
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContianerWidget extends StatelessWidget {
  final double? height;
  final Color color;
  const CustomContianerWidget({
    super.key,
    this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: Colors.white,
            width: 5,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Jan, 16th 2023\n1:00 PM - 3:00 PM'),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Recap ready!',
                        style: TextStyle(color: Colors.red),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Kickoff meeting - kendates Projects',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Text('Romario meeting room'),
            const SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
