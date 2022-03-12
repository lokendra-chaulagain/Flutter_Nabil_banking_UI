import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  //---------------------
  final String text;
  //---------------------
  const SmallText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}
