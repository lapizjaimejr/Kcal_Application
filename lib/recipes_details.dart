import 'package:flutter/material.dart';
import 'package:kcal_application/components/add_favorite_button.dart';
import 'package:kcal_application/ingredients_content.dart';
import 'components/time_serving_rating.dart';

class RecipesDetails extends StatelessWidget {
  const RecipesDetails(
      {Key? key,
      required this.text,
      required this.image,
      required this.time,
      required this.serving,
      required this.recipeDesc,
      required this.ingimage1,
      required this.ingimage2,
      required this.ingimage3,
      required this.ingimage4,
      required this.ingname1,
      required this.ingname2,
      required this.ingname3,
      required this.ingname4,
      required this.ingmeasure1,
      required this.ingmeasure2,
      required this.ingmeasure3,
      required this.ingmeasure4,
      required this.step1,
      required this.step2,
      required this.step3})
      : super(key: key);

  final String text,
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
    List<Map<String, String>> ingData = [
      {'image': ingimage1, 'name': ingname1, 'measurement': ingmeasure1},
      {'image': ingimage2, 'name': ingname2, 'measurement': ingmeasure2},
      {'image': ingimage3, 'name': ingname3, 'measurement': ingmeasure3},
      {'image': ingimage4, 'name': ingname4, 'measurement': ingmeasure4},
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Recipes',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 210,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TimeServRate(
                time: time,
                serving: serving,
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.green.shade200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                recipeDesc,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.8,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ingData.length,
                  itemBuilder: (BuildContext context, int index) =>
                      IngredientsContent(
                    image: ingData[index]['image'],
                    name: ingData[index]['name'],
                    measurement: ingData[index]['measurement'],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Directions',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Step 1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      step1,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Step 2',
                          style: TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      step2,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Step 3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      step3,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 2,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            AddFaveButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
