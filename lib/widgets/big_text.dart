import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  //---------
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  //---------------
  const BigText({
    Key? key,
    required this.text,
    required this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}
