import 'package:flutter/material.dart';

class PaymentWidget1 extends StatelessWidget {
  //-----------------
  final String bigText;
  final String smallText;
  final IconData icon;
  //-----------------
  const PaymentWidget1({
    Key? key,
    required this.bigText,
    required this.smallText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.green,
              ),
              const SizedBox(width: 34),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bigText,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    smallText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 12),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
