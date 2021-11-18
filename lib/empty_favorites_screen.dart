//@dart=2.9
import 'package:flutter/material.dart';

class EmptyFavoritesScreen extends StatelessWidget {
  const EmptyFavoritesScreen({
    Key key,
    this.image,
    this.text,
    this.desc,
  }) : super(key: key);

  final String image, text, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 80),
        Opacity(
          opacity: 0.2,
          child: Image.asset(
            image,
            height: 200,
            width: 300,
          ),
        ),
        SizedBox(height: 25),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 350),
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(height: 80),
        TextButton(
          onPressed: () {},
          child: Text(
            'Search',
            style: TextStyle(
                letterSpacing: 3,
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(200, 239, 156, 46),
            minimumSize: Size(300, 70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
