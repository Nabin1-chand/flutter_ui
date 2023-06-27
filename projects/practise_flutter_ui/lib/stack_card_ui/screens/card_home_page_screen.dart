import 'package:flutter/material.dart';

class CardHomePage extends StatelessWidget {
  const CardHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 550,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.blue[100]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hello,',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Nabin Chand',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(167, 119, 159, 194),
                            ),
                            child: CustomPaint(
                              painter: LinePainter(),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
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
                                          style: TextStyle(color: Colors.white),
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
                                                backgroundColor: Color.fromARGB(
                                                    255, 7, 84, 148)),
                                            onPressed: () {},
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Start',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                        Row(
                                          children: [
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
            )
          ],
        ),
      ),
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
