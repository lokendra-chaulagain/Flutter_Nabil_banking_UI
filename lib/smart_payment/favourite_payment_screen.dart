import 'package:flutter/material.dart';
import 'package:nabil_banking_app_ui/smart_payment/favourite_payment-widget.dart';
import 'package:nabil_banking_app_ui/widgets/icon_and_text_appbar.dart';

class FavouritePaymentscreen extends StatefulWidget {
  const FavouritePaymentscreen({Key? key}) : super(key: key);

  @override
  State<FavouritePaymentscreen> createState() => _FavouritePaymentscreenState();
}

class _FavouritePaymentscreenState extends State<FavouritePaymentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          IconAndTextAppBar(text: "Smart Payment"),
          FavouritePaymentWidget(),
          SizedBox(height: 20),
          FavouritePaymentWidget(),
          SizedBox(height: 20),
          FavouritePaymentWidget(),
        ],
      ),
    );
  }
}
