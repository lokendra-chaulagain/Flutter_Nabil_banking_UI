import 'package:flutter/material.dart';
import 'package:nabil_banking_app_ui/widgets/small_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Center(
          child: SmallText(text: "My Account"),
        ),
      ),
    );
  }
}
