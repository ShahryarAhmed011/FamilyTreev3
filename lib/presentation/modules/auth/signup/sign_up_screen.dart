import 'package:family_tree/presentation/modules/auth/signup/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import '../../../base/screen/stateful_screen.dart';
import '../../../widgets/country_number_textfield.dart';
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
                      'assets/images/png/profile-outline.png',
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
                    'Sign up',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    hintText: 'Enter your Name',
                    controller: TextEditingController(),
                    suffixIcon: Icons.person,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Enter your Family Name',
                    controller: TextEditingController(),
                    suffixIcon: Icons.person,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Enter your Email',
                    controller: TextEditingController(),
                    suffixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Enter your Password',
                    controller: TextEditingController(),
                    suffixIcon: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CountryCodeTextField(),
                  const SizedBox(height: 35),
                  Center(
                    child: SizedBox(
                      width: 335,
                      height: 50,
                      child: CustomButton(
                        onPressed: () {
                          // Your code here
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontFamily: 'Poppins'),
                      ),
                      InkWell(
                        child: Text(
                          '  Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
