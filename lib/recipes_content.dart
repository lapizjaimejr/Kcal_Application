//@dart=2.9
import 'package:flutter/material.dart';
import 'package:kcal_application/components/time_serving_rating.dart';

import 'components/screen_arguments.dart';

class RecipesContent extends StatelessWidget {
  const RecipesContent({
    Key key,
    this.text,
    this.desc,
    this.image,
    this.time,
    this.serving,
    this.recipeDesc,
    this.ingimage1,
    this.ingimage2,
    this.ingimage3,
    this.ingimage4,
    this.ingname1,
    this.ingname2,
    this.ingname3,
    this.ingname4,
    this.ingmeasure1,
    this.ingmeasure2,
    this.ingmeasure3,
    this.ingmeasure4,
    this.step1,
    this.step2,
    this.step3,
  }) : super(key: key);

  final String text,
      desc,
      image,
      time,
      serving,
      recipeDesc,
      ingimage1,
      ingimage2,
      ingimage3,
      ingimage4,
      ingname1,
      ingname2,
      ingname3,
      ingname4,
      ingmeasure1,
      ingmeasure2,
      ingmeasure3,
      ingmeasure4,
      step1,
      step2,
      step3;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Stack(
        children: <Widget>[
          Container(
            height: 325,
            decoration: BoxDecoration(
              color: Colors.amber.shade100.withOpacity(0.5),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 190),
            padding: EdgeInsets.only(left: 15, right: 15),
            child: TimeServRate(
              time: time,
              serving: serving,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 225),
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 11),
                Text(
                  desc,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/RecipeDetails',
                  arguments: RecipeScreenArguments(
                      text,
                      image,
                      time,
                      serving,
                      recipeDesc,
                      ingimage1,
                      ingimage2,
                      ingimage3,
                      ingimage4,
                      ingname1,
                      ingname2,
                      ingname3,
                      ingname4,
                      ingmeasure1,
                      ingmeasure2,
                      ingmeasure3,
                      ingmeasure4,
                      step1,
                      step2,
                      step3));
            },
            child: Container(
              height: 180,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                        child: Image.asset(image, fit: BoxFit.cover)),
                  ),
                  Positioned(
                    right: 20,
                    top: 10,
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
