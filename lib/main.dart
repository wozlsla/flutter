import 'package:flutter/material.dart';
import 'widgets/button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0XFF181818),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Jimnny 🥰',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                        fontSize: 17,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 85,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white.withValues(alpha: 0.8),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              '\$5 194 482',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: 'Transfer',
                  bgColor: Color(0xFFF1B33B),
                  textColor: Colors.black,
                ),
                Button(
                  text: 'Request',
                  bgColor: Color(0xFF1F2123),
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Wallets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Color(0xFF1F2123),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 28,
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Euro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '6 428',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'EUR',
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.8),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Transform.scale(
                      scale: 1.8,
                      child: Transform.translate(
                        offset: Offset(-4, 18),
                        child: Icon(
                          Icons.euro_rounded,
                          color: Colors.white,
                          size: 88,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
