import 'package:flutter/material.dart';



class FindItems extends StatelessWidget {
  const FindItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        child: Text(
        "Hemos encontrado estos items para ti",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 18.0,
        ),),
      ),
    );
  }
}