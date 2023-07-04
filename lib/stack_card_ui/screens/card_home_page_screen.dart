import 'package:flutter/material.dart';

class CardHomePage extends StatelessWidget {
  const CardHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.task_sharp)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volunteer_activism_sharp)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.person_2_outlined))
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: CustomPaint(
                  painter: CurvePainter(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Nabin ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Icon(
                              Icons.menu,
                              size: 40,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Hello,',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Nabin Chand',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(167, 119, 159, 194),
                              ),
                              child: CustomPaint(
                                painter: LinePainter(),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 1)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Icon(
                                                Icons.hail,
                                                size: 40,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 35,
                                          ),
                                          const Text(
                                            'Brand New\nwebsite Design',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 65,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 7, 84, 148)),
                                              onPressed: () {},
                                              child: const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Start',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.date_range,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                'June 17',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              //
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 415,
              left: 35,
              right: 35,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(244, 241, 238, 238),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'UPCOMING',
                            style: TextStyle(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'ALL',
                            style: TextStyle(
                                color: Color.fromARGB(255, 109, 104, 104)),
                          ),
                        ],
                      ),
                      const RowTileWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const RowTileWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const RowTileWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const RowTileWidget(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowTileWidget extends StatelessWidget {
  const RowTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [Text('Radicon Builder'), Text('17 May, 4:30')],
        ),
        const Spacer(),
        const Text(
          '+32%',
          style: TextStyle(color: Color.fromARGB(255, 209, 99, 135)),
        )
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    var paint = Paint()
      // ..color = Color.fromARGB(255, 18, 15, 150)
      ..shader = const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(139, 102, 184, 170),
            Color.fromARGB(255, 60, 122, 173)
          ]).createShader(rect)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 2;

    var paint1 = Paint()
      // ..color = Color.fromARGB(255, 27, 138, 12)
      ..shader = const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 138, 184, 211),
            Color.fromARGB(255, 60, 122, 173)
          ]).createShader(rect)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 4;

    var path = Path();
    path.moveTo(size.width * 0.87, 0);
    path.lineTo(size.width * 0.3, size.height);
    path.lineTo(size.width * 0.45, size.height);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

    path.close();
    var path1 = Path();
    path1.moveTo(size.width, 0);
    path1.lineTo(size.width * 0.45, size.height);
    path1.lineTo(size.width * 0.60, size.height);
    path1.lineTo(size.width, size.height * 0.3);
    path1.close();
    canvas.drawPath(path1, paint1);

    var paint2 = Paint()
      // ..color = Color(0xff756AE6)
      ..shader = const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(125, 70, 143, 109),
            Color.fromARGB(255, 60, 122, 173)
          ]).createShader(rect)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 2;
    var path2 = Path();
    path2.moveTo(size.width * 0.6, size.height);
    path2.lineTo(size.width, size.height * 0.3);
    path2.lineTo(size.width, size.height);
    path2.close();
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromARGB(255, 122, 185, 236)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4;

    var path = Path();

    path.addRRect(RRect.fromLTRBAndCorners(0, 0, size.width, size.height * 0.6,
        bottomLeft: const Radius.circular(10),
        bottomRight: const Radius.circular(10)));
    canvas.drawPath(path, paint);
    paintCurve(canvas, size);
  }

  void paintCurve(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color.fromARGB(255, 122, 185, 236);

    paint.style = PaintingStyle.fill;

    // path.moveTo(10, size.height * 0.59);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height * 0.73, size.width - 5, size.height * 0.59);
    // canvas.drawPath(path, paint);
    canvas.drawArc(Offset(0, size.height * 0.52) & Size(size.width, 100),
        degreeToRadian(0), degreeToRadian(180), false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  double pi = 3.141592653589793238;

  double degreeToRadian(double degree) {
    return degree * pi / 180;
  }
}
