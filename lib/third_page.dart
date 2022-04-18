import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20.0,
        ),
        Text(
          'Smart Toilet',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50,
            height: 1.5,
            fontWeight: FontWeight.w500,
            color: Colors.red.shade900,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Image.asset('assets/images/image3.jpeg'),
        const SizedBox(
          height: 20.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Welcome To The Smart Bathroom,\nLet\'s Now About Use It',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30,
              height: 1.5,
              fontFamily: 'Pacifico',
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
