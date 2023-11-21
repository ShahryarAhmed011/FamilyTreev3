import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 148,
            color: const Color(0xFF6FC276),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 60, right: 20, bottom: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'assets/images/png/profilemen.png',
                          ),
                          const Column(
                            children: [
                              Text(
                                'Welcome Back',
                                style: TextStyle(
                                    color: Color(0xFFD9D9D9), fontSize: 14),
                              ),
                              Text(
                                'Hi, Shahryar',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(07))),
                          child: const Icon(Icons.share_outlined))
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('FAMILY NAME',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Home',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(40, 25, 40, 0),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: 260,
                  height: 195,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffffffff),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 235,
                        height: 155,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      width: 92,
                                      height: 92,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(46),
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/png/profilemen2.png'),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Asif Khan',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const DateTextWidget(
                                      date: '06-NOV-2022',
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      width: 92,
                                      height: 92,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(46),
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/png/profilewman.png'),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Alia Haider',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    const DateTextWidget(
                                      date: '06-NOV-2022',
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 231,
                        height: 22,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ActionButtonWidget(text: 'Add'),
                            ActionButtonWidget(text: 'Delete'),
                            ActionButtonWidget(
                              text: 'Profile',
                              backgroundColor: Color(0xff6fc276),
                              textColor: Color(0xfffbfbfb),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: 160,
                  height: 199,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffffffff),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 235,
                        height: 155,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              width: 92,
                              height: 92,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(46),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/png/profilemen1.png'),
                                ),
                              ),
                            ),
                            const Text(
                              'Amir Khan',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000),
                              ),
                            ),
                            const DateTextWidget(
                              date: '06-NOV-2022',
                            )
                          ],
                        ),
                      ),
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ActionButtonWidget(text: 'Delete'),
                          ActionButtonWidget(
                            text: 'Profile',
                            backgroundColor: Color(0xff6fc276),
                            textColor: Color(0xfffbfbfb),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 80,)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ActionButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const ActionButtonWidget({
    super.key,
    required this.text,
    this.backgroundColor = const Color(0xffd9d9d9),
    this.textColor = const Color(0xff000000),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      width: 63,
      height: 20,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class DateTextWidget extends StatelessWidget {
  final String date;

  const DateTextWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57,
      height: 12,
      child: Text(
        date,
        style: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.bold,
          color: Color(0xff000000),
        ),
      ),
    );
  }
}
