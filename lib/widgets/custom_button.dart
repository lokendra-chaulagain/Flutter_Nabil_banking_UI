import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  //-----------------
  final String text;
  //----------------
  const CustomButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //------------------------------
    double screenWidth = MediaQuery.of(context).size.width;
    //----------------------------

    return Container(
      width: screenWidth,
      height: 50,
      child: Center(
        child: Text(text),
        // Text("LOGIN"),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.green,
      ),
    );
  }
}
