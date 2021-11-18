import 'package:flutter/material.dart';
import 'components/screen_arguments.dart';

class FoodsContent extends StatelessWidget {
  const FoodsContent({
    Key? key,
    required this.image,
    required this.text,
    required this.altname,
    required this.desc,
    required this.trivia,
    required this.galimage1,
    required this.galimage2,
    required this.galimage3,
  }) : super(key: key);

  final String image,
      text,
      altname,
      desc,
      trivia,
      galimage1,
      galimage2,
      galimage3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/FoodDetails',
            arguments: FoodScreenArguments(
              image,
              text,
              altname,
              desc,
              trivia,
              galimage1,
              galimage2,
              galimage3,
            ));
      },
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.amber.shade100.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              image,
              height: 45,
            ),
            SizedBox(width: 6),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black54,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
