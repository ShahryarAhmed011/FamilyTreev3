import 'package:flutter/material.dart';
import '../../../base/screen/stateful_screen.dart';
import 'bloc/login_bloc.dart';

class LogInScreen extends StatefulScreen<LogInBloc> {
  const LogInScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LogInScreenState();
  }
}

class _LogInScreenState extends ScreenState<LogInBloc>
    with TickerProviderStateMixin {
  @override
  Widget buildScreen(BuildContext context) {
    return  Scaffold(
      body: Column(
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
              Center(
                child: Image.network(
                  'assets/images/svg/treeWhite.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}








const double _kCurveHeight = 25;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * _kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = const Color(0xFF6FC276));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}