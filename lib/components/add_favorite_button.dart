import 'package:flutter/material.dart';

class AddFaveButton extends StatelessWidget {
  const AddFaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Color.fromARGB(200, 239, 156, 46),
        minimumSize: Size(300, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Text(
        'Add to Favorite',
        style: TextStyle(
          letterSpacing: 2,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
