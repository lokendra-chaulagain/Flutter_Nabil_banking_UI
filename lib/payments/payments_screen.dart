import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nabil_banking_app_ui/payments/payment_widget1.dart';
import 'package:nabil_banking_app_ui/widgets/icon_and_text_appbar.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      body: Column(
        children: const [
          IconAndTextAppBar(
            text: "Payments",
          ),
          PaymentWidget1(
            icon: Icons.mail,
            bigText: 'UTILITY BILL PAYMENT',
            smallText: 'Bill Payment to registred merchants',
          ),
          PaymentWidget1(
            icon: Icons.phone,
            bigText: 'TOPUP',
            smallText: 'Topup payment',
          ),
          PaymentWidget1(
            icon: Icons.arrow_back,
            bigText: 'LOAD WALLET',
            smallText: 'WALLET',
          ),
        ],
      ),
    );
  }
}

// appBar: AppBar(
//   leading: const Icon(Icons.arrow_back),
//   elevation: 0.0,
//   title: const Center(child: Text("Payments")),
// ),
