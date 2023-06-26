import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/simple_ui/widgets/custom_app_bar.dart';
import 'package:practise_flutter_ui/widget/modal_buttom_sheet.dart';

class SimpleHomePageUI extends StatefulWidget {
  const SimpleHomePageUI({super.key});

  @override
  State<SimpleHomePageUI> createState() => _SimpleHomePageUIState();
}

class _SimpleHomePageUIState extends State<SimpleHomePageUI>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = BottomSheet.createAnimationController(this);
    controller.duration = Duration(milliseconds: 750);
    controller.reverseDuration = Duration(milliseconds: 750);
    controller.drive(CurveTween(curve: Curves.linear));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(201, 198, 194, 1),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                elevation: 0,
                transitionAnimationController: controller,
                context: context,
                isScrollControlled: true,
                constraints: BoxConstraints.tight(Size(
                    MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * .87)),
                builder: (context) {
                  return ModalBottomSheet(context);
                });
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
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
              const Text('Tuesday, 24 Aug'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'You Have 8',
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                'Mettings Today',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
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
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 12.5),
                    padding: const EdgeInsets.only(top: 35, left: 16),
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              CustomListTile(
                                title: 'Today (8)',
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CustomListTile(
                                title: 'Tommorow (6)',
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CustomListTile(
                                title: '26 Aug (6)',
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              'It is a good day to  start any event, you can make important decisions or plan them.'),
                        ),
                        const CustomCardWidget(
                          color: Color.fromARGB(255, 116, 159, 194),
                          title: 'New Project\nDiscussion',
                          title2: '09:00 Am - 11:00 Am',
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const CustomCardWidget(
                          color: Color.fromARGB(255, 85, 198, 255),
                          title: 'Travel DashBoard\n Project',
                          title2: '13:00 pm - 15:00 pm',
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipOval(
                      child: Container(
                        height: 25,
                        width: 45,
                        color: const Color.fromARGB(255, 228, 214, 214),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        child: const Icon(
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

class CustomCardWidget extends StatelessWidget {
  final Color color;
  final String title;
  final String title2;
  const CustomCardWidget({
    super.key,
    required this.title,
    required this.title2,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  title2,
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Transform.translate(
                  offset: const Offset(45, 0),
                  child: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                          fit: BoxFit.cover,
                          height: 60,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF1WP2giVUjPEBEB7o1X0pimQgfXkUhi-ncPQzK84q1Q&s')),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(30, 0),
                  child: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                          fit: BoxFit.cover,
                          height: 60,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_OGPDBW6KZmoN9mqr-1TjnemtQK1eIlSrfVblCLqBw&s')),
                    ),
                  ),
                ),
                Transform.translate(
                    offset: const Offset(15, 0),
                    child: CircleAvatar(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: const Image(
                            fit: BoxFit.cover,
                            height: 60,
                            image: NetworkImage(
                                'https://qodebrisbane.com/wp-content/uploads/2019/07/This-is-not-a-person-2-1.jpeg')),
                      ),
                    )),
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: const Image(
                        fit: BoxFit.cover,
                        height: 60,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuTCVxix2DrHrIok3ojC5aLfMdtYTQ3PLMR5rk2A3SiQ&s')),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  const CustomListTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
