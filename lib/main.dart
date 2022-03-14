import 'package:flutter/material.dart';
import 'package:nabil_banking_app_ui/smart_payment/favourite_payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const LoginScreen(),
      // home: const MyAccount(),
      // home: SendMoney(),
      // home: const CustomAppBar(),
      //
      home: const FavouritePaymentscreen(),
    );
  }
}
