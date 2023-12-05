import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../base/screen/stateful_screen.dart';
import '../../../widgets/custom_textfield.dart';
import '../../splash/bloc/splash_bloc.dart';
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
                      painter: ShapesPainterUpper(),
                      child: Container(
                        height: 200,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset(
                      height: 165,
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
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          const Text(
                            'Remember me',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const Text(
                        'Forgot Password?',
                        style:
                            TextStyle(color: Color(0xFF20396F), fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      width: 445,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff6fc276),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () async {
                          var sharepref = await SharedPreferences.getInstance();
                          sharepref.setBool(SplashBloc.KEYLOGIN, true);
                          context
                              .read<LogInBloc>()
                              .add(const NavigateToHomeStateEvent());
                        },
                        child: const Text(
                          'LogIn',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don’t have an account?',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        InkWell(
                          onTap: () {
                            context
                                .read<LogInBloc>()
                                .add(const NavigateToSignupEvent());
                          },
                          child: const Text(
                            '  Signup',
                            style: TextStyle(
                              color: Color(0xFF20396F),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomPaint(
                  painter: ShapesPainterBottom(),
                  child: const SizedBox(
                    height: 120,
                    width: double.infinity,
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

class ShapesPainterUpper extends CustomPainter {
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

class ShapesPainterBottom extends CustomPainter {
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
