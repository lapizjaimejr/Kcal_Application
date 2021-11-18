import 'package:flutter/material.dart';

class FoodsHeader extends StatelessWidget {
  const FoodsHeader({
    Key? key,
    required this.image,
    required this.text,
    required this.altname,
  }) : super(key: key);

  final String image, text, altname;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.amber.shade100.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            height: 70,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Alternative Name:',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    altname,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
