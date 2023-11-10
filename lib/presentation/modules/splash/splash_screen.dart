import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 139, 0, 0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 1, 144),
                  child: const Text(
                    'ADD SPACE',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 42,
                      fontWeight: FontWeight.w900,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 212,
                  child: Image.network(
                    'assets/images/png/tree.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              CustomPaint(
                                painter: ShapesPainter(),
                                child: Container(
                                  height: 400,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            left: 80,
                            top: 250,
                            child: Container(
                              width: 323,
                              height: 52,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 14.5,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(46, 14, 31, 15),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 60, 0),
                                      child: const Text(
                                        'Click Here to Continue',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 1),
                                      width: 16,
                                      height: 16,
                                      child: const Icon(Icons.arrow_forward),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 105,
                            top: 90,
                            child: SizedBox(
                                width: 283,
                                height: 35,
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                )),
                          ),
                          Positioned(
                            left: 95,
                            top: 90,
                            child: SizedBox(
                                width: 99,
                                height: 35,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff12594d),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  padding: EdgeInsets.zero,
                                )),
                          ),

                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const double _kCurveHeight = 55;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.moveTo(0, _kCurveHeight);
    p.lineTo(0, size.height);
    p.lineTo(size.width, size.height);
    p.lineTo(size.width, _kCurveHeight);
    p.quadraticBezierTo(size.width / 2, 0, 0, _kCurveHeight);

    canvas.drawPath(p, Paint()..color = const Color(0xFF6FC276));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
