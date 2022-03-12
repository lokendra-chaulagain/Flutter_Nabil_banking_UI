import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  //---------
  final String text;
  //---------------
  const BigText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // "Good Morning!",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: Colors.green.shade800,
      ),
    );
  }
}
