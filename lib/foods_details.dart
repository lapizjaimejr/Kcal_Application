import 'package:flutter/material.dart';
import 'package:kcal_application/components/add_favorite_button.dart';
import 'package:kcal_application/components/foods_header.dart';

import 'gallery_content.dart';

class FoodsDetails extends StatelessWidget {
  const FoodsDetails({
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
    List<String> galData = [
      galimage1,
      galimage2,
      galimage3,
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Foods',
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
            FoodsHeader(image: image, text: text, altname: altname),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                desc,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 2,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                trivia,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 2,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: galData.length,
                itemBuilder: (BuildContext context, int index) =>
                    GalleryContent(
                  galimage: galData[index],
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: AddFaveButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
