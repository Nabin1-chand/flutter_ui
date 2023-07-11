import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/widget/modal_buttom_sheet.dart';

class CustomStackAnimation extends StatefulWidget {
  const CustomStackAnimation({super.key});

  @override
  State<CustomStackAnimation> createState() => _CustomStackAnimationState();
}

class _CustomStackAnimationState extends State<CustomStackAnimation> {
  bool _isPositionedRight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Text('press'),
          onPressed: () {
            setState(() {
              _isPositionedRight = !_isPositionedRight;
            });
          }),
      body: SafeArea(
        child: Stack(children: [
          AnimatedPositioned(
            curve: Curves.easeInOut,
            left: _isPositionedRight ? 200.0 : 0.0,
            bottom:
                _isPositionedRight ? -MediaQuery.of(context).size.height : 0,
            duration: const Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 138, 171, 199),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isPositionedRight = !_isPositionedRight;
                                  });
                                },
                                icon: const Icon(Icons.clear)),
                            const CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 226, 219, 219),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'zoom',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
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
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
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
              ),
            ),
          )
        ]),
      ),
    );
  }
}
