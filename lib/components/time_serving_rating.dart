import 'package:flutter/material.dart';

class TimeServRate extends StatelessWidget {
  const TimeServRate({Key? key, required this.time, required this.serving})
      : super(key: key);

  final String time, serving;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.access_time,
          color: Colors.black54,
        ),
        SizedBox(width: 10),
        Text(
          time,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        SizedBox(width: 10),
        Icon(
          Icons.group_outlined,
          color: Colors.black54,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            serving,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        ...buildStar(),
      ],
    );
  }

  List buildStar() {
    return List.generate(
      5,
      (index) => Icon(
        Icons.star,
        color: Colors.orange,
        size: 20,
      ),
    );
  }
}
