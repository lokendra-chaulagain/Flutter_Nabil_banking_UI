import 'package:flutter/material.dart';
import 'package:nabil_banking_app_ui/widgets/card_box.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class SendMoney extends StatelessWidget {
  double screenHeight = 0;
  double screenWidth = 0;
  // const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Center(child: Text("Send Money")),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 50),
            //===================================================================
            CardBox(
              btext: "Hello",
              stext: "Using Receipient's Mobile Number",
              image: const AssetImage("assets/images/connectips1.png"),
            ),
            const SizedBox(height: 50),
            //===================================================================
            CardBox(
              btext: "FUND TRANSFER",
              stext: "Using Receipient's Account Number",
              image: const AssetImage("assets/images/connectips1.png"),
            ),
            const SizedBox(height: 50),
            //===================================================================
            CardBox(
              btext: "CONNECT IPS",
              stext: "Connect Ips",
              image: const AssetImage("assets/images/connectips1.png"),
            )
          ],
        ),
      ),
    );
  }
}
