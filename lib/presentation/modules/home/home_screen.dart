import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 375,
      color: const Color(0xFF6FC276),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 60, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      'assets/images/png/profilemen.png',
                      width: 40,
                      height: 40,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Welcome Back',
                          style:
                              TextStyle(color: Color(0xFFD9D9D9), fontSize: 14),
                        ),
                        Text(
                          'Hi, Shahryar',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(07))),
                    child: const Icon(Icons.share_outlined))
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 115),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('FAMILY NAME',  style:
                TextStyle(color: Color(0xFFFFFFFF), fontSize: 20, fontWeight: FontWeight.bold))],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
