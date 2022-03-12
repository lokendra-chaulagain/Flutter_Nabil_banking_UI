import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  //---------------------
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  // final FontWeight? size;

  //---------------------
  const SmallText({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
