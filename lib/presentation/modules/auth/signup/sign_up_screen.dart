import 'package:family_tree/presentation/modules/auth/signup/bloc/sign_up_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../base/screen/stateful_screen.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';

class SignUpScreen extends StatefulScreen<SignUpBloc> {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignUpScreenState();
  }
}

class _SignUpScreenState extends ScreenState<SignUpBloc>
    with TickerProviderStateMixin {
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomPaint(
                      painter: ShapesPainter(),
                      child: Container(
                        height: 450,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 220),
                    child: Image.network(
                      'assets/images/png/treeWhite.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomTextField(
                    hintText: 'Enter your email',
                    controller: TextEditingController(),
                    suffixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomTextField(
                    hintText: 'Enter your Password',
                    controller: TextEditingController(),
                    suffixIcon: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          const Text('Remember me',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                      const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xFF20396F),fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Center(
                    child: SizedBox(
                      width: 335,
                      height: 50,
                      child: LoginButton(
                        onPressed: () {
                          // Your code here
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Don’t have an account?',
                          ),
                          TextSpan(
                            text: ' ',
                          ),
                          TextSpan(
                            text: 'Signup',
                            style: TextStyle(
                              color: Color(0xFF20396F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomPaint(
                  painter: ShapesPainterO(),
                  child: const SizedBox(
                    height: 150,
                    width: 600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

const double _kCurveHeight = 45;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(
        size.width / 2, 2 * _kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = const Color(0xFF6FC276));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

const double _kCurveHeighto = 100;

class ShapesPainterO extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.moveTo(0, _kCurveHeighto);
    p.lineTo(0, size.height);
    p.lineTo(size.width, size.height);
    p.lineTo(size.width, _kCurveHeighto);
    p.quadraticBezierTo(size.width / 2, 0, 0, _kCurveHeighto);

    canvas.drawPath(p, Paint()..color = const Color(0xFF6FC276));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
