import 'package:flutter/material.dart';

class IconAndTextAppBar extends StatelessWidget {
  //----------------
  final String text;
  //----------------
  const IconAndTextAppBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back,
                size: 26,
                color: Colors.white,
              ),
              const SizedBox(width: 110),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
