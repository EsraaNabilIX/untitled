import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/third_page.dart';

import 'first_page.dart';
import 'second_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    ),
  );
}

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late int currentPageIndex;
  late int pageLength;

  @override
  void initState() {
    currentPageIndex = 0;
    pageLength = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                PageView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    FirstPage(),
                    SecondPage(),
                    ThirdPage(),
                  ],
                  onPageChanged: (value) {
                    setState(() {
                      currentPageIndex = value;
                    });
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DotsIndicator(
                        dotsCount: pageLength,
                        position: currentPageIndex.toDouble(),
                        decorator: const DotsDecorator(
                          color: Colors.grey, // Inactive color
                          activeColor: Colors.black54,
                          size: Size.square(15.0),
                          activeSize: Size.square(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
