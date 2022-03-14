// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FavouritePaymentWidget extends StatelessWidget {
  const FavouritePaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "wifi fee",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          // const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Helloo lokendra",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                // width: 96,
                height: 30,

                child: Row(
                  children: const [
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "DELETE",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 0.5,
                      spreadRadius: 0.8,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
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
