import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
        Image.asset('assets/images/image2.jpeg'),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          'Please, Insert Coins\n To Pay ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            height: 1.7,
            fontFamily: 'Pacifico',
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
