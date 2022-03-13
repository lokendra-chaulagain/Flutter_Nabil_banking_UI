import 'package:flutter/material.dart';
import 'package:nabil_banking_app_ui/inner-screens/my_account.dart';
import 'package:nabil_banking_app_ui/inner-screens/send_money.dart';
import 'package:nabil_banking_app_ui/inner_widgets/custom_appbar.dart';
import 'package:nabil_banking_app_ui/screens/login_screen.dart';

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
      home: SendMoney(),
      // home: const CustomAppBar(),
    );
  }
}
