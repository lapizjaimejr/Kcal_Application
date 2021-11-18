import 'package:flutter/material.dart';

class GalleryContent extends StatelessWidget {
  const GalleryContent({Key? key, required this.galimage}) : super(key: key);

  final String galimage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                galimage,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
