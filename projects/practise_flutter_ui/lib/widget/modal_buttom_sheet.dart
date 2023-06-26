import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/simple_ui/screens/edit_task_screen.dart';

ModalBottomSheet(context) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.clear)),
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 226, 219, 219),
                    radius: 25,
                    child: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  )
                ],
              ),
              const Text(
                'Travel  Dashboard Project',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Need to break down a travel dashboard content into proper information architecture and make all content are fixed'),
              const SizedBox(
                height: 20,
              ),
              const ReusableRowColumnWidget(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Metting Platform',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: const Color.fromARGB(255, 67, 162, 240),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'zoom',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        'ID: 862 229 572',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Guest (4)',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTileWidget(
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF1WP2giVUjPEBEB7o1X0pimQgfXkUhi-ncPQzK84q1Q&s',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTileWidget(
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu_OGPDBW6KZmoN9mqr-1TjnemtQK1eIlSrfVblCLqBw&s'),
              const SizedBox(
                height: 20,
              ),
              const CustomTileWidget(
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuTCVxix2DrHrIok3ojC5aLfMdtYTQ3PLMR5rk2A3SiQ&s'),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: ClipOval(
          child: Container(
            height: 25,
            width: 45,
            color: const Color.fromARGB(255, 228, 214, 214),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: const Icon(
              Icons.remove,
              color: Color.fromARGB(255, 204, 204, 204),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 70,
        right: 25,
        child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 35,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => EditTaskScreen()));
                },
                icon: const Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.white,
                ))),
      ),
    ],
  );
}

class CustomTileWidget extends StatelessWidget {
  final String image;
  const CustomTileWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                    fit: BoxFit.cover, height: 60, image: NetworkImage(image)),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text('James Geidt'),
            const Spacer(),
            Row(
              children: const [
                Icon(
                  Icons.phone,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.message)
              ],
            )
          ],
        ),
      ],
    );
  }
}

class ReusableRowColumnWidget extends StatelessWidget {
  const ReusableRowColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: ReusableColumnWidget(
                iconData: Icons.date_range,
                title1: 'Date',
                title2: 'Tuesday, 24 Aug',
              ),
            ),
            Expanded(
              child: ReusableColumnWidget(
                  title1: 'Time',
                  title2: '13:00 PM - 15:00 PM',
                  iconData: Icons.timer),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: ReusableColumnWidget(
                iconData: Icons.person,
                title1: 'Host',
                title2: 'Cristofer Donin',
              ),
            ),
            Expanded(
              child: ReusableColumnWidget(
                  title1: 'Notify Before',
                  title2: '15 minutes ',
                  iconData: Icons.timer),
            ),
          ],
        ),
      ],
    );
  }
}

class ReusableColumnWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final IconData iconData;
  const ReusableColumnWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData),
            const SizedBox(
              width: 10,
            ),
            Text(title1)
          ],
        ),
        Text(
          title2,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
