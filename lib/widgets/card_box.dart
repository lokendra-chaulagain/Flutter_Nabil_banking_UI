import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  //--------------
  double screenHeight = 0;
  double screenWidth = 0;
  final primaryColor = const Color.fromARGB(0, 178, 93, 1);
  //---------------
  final String? btext;
  final String stext;
  AssetImage image;

  //---------------
  CardBox({
    Key? key,
    required this.btext,
    required this.stext,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //-------------------------------------
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    //----------------
    return Container(
      width: screenWidth,
      height: 122,
      decoration: BoxDecoration(
        color: Colors.white,
        // border: BoxBorder(),
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1.5,
            spreadRadius: 1.4,
            offset: Offset(0, 0),
            color: Colors.grey,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 50,
            width: 70,
            child: Image(
              image: image,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            btext!,
            // "CONNECT IPS",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            stext,
            // "Connect Ips",
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
