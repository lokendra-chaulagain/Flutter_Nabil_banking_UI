import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(2),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 120),
          hintText: "Mobile Number",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
