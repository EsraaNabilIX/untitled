import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Image.asset('assets/images/image1.jpeg'),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          'The Time You Have Is',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            height: 2,
            fontFamily: 'Pacifico',
            color: Colors.black,
          ),
        ),
        Text(
          '20 Minute',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35,
            height: 1.5,
            fontFamily: 'Pacifico',
            color: Colors.red.shade900,
          ),
        ),
      ],
    );
  }
}
