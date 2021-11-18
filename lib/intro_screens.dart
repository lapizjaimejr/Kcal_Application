// @dart=2.9

import 'package:flutter/material.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    Key key,
    this.text,
    this.desc,
    this.image,
  }) : super(key: key);

  final String text, desc, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 50),
        Image.asset(
          image,
          height: 300,
          width: 300,
        ),
        SizedBox(height: 30),
        Text(
          text,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 350),
          child: Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
              letterSpacing: 1,
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
