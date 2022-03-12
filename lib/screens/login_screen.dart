import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nabil_banking_app_ui/widgets/big_text.dart';
import 'package:nabil_banking_app_ui/widgets/custom_button.dart';
import 'package:nabil_banking_app_ui/widgets/custom_form_field.dart';
import 'package:nabil_banking_app_ui/widgets/custom_icon.dart';
import 'package:nabil_banking_app_ui/widgets/small_text.dart';
import 'package:nabil_banking_app_ui/widgets/custom_check_box.dart';

class LoginScreen extends StatefulWidget {
  //------------------

  //-------------------
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //--------------
  double screenHeight = 0;
  double screenWidth = 0;
  //---------------

  @override
  Widget build(BuildContext context) {
    //statusBar transparent---------------
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    //-------------------------------------
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    //----------------

    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        height: 1000,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 320,
                width: screenWidth,
                color: Colors.green,
              ),
            ),
            //Top Row Like AppBar-----------------------
            Positioned(
              top: 60,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      CustomIcon(icon: Icons.mail),
                      SmallText(text: "Calandar")
                    ],
                  ),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "NABIL",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(text: "SmartBank"),
                    ]),
                  ),
                  const CustomIcon(icon: Icons.qr_code_2_outlined),
                  const CustomIcon(icon: Icons.sms)
                ],
              ),
            ),
            //-----------------------------------------
            Positioned(
              top: 120,
              left: 20,
              right: 20,
              child: Container(
                height: 150,
                width: 370,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("Load more"),
                      ],
                    ),
                    const SizedBox(height: 38),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        width: 370,
                        height: 80,
                        color: Colors.pink,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          // padding: const EdgeInsets.symmetric(horizontal: 20),
                          itemBuilder: ((context, index) {
                            return const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: CircleAvatar(
                                // child: SizedBox(width: 10),
                                radius: 28,
                                backgroundColor: Colors.green,
                              ),
                            );
                          }),
                        ),
                      )
                    ]),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),

            //Good Morning wala White Container======================================>
            Positioned(
              top: 290,
              left: 20,
              right: 20,
              child: Container(
                width: screenWidth,
                height: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0.2,
                        offset: Offset(2, 2),
                        color: Colors.grey,
                      )
                    ]),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
                      const BigText(text: "Good Morning!"),
                      const SizedBox(height: 16),
                      const CustomFormField(),
                      const SizedBox(height: 16),
                      const CustomFormField(),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          SmallText(text: "Remember Mobile Number"),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const CustomButton(
                        text: "LOGIN",
                      ),
                      const SizedBox(height: 16),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Unable to Login?",
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: "Tap Here",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const SmallText(
                        text: "Forgot Password",
                      )
                    ],
                  ),
                ),
              ),
            ),
            //==================================================================>
          ],
        ),
      ),
    );
  }
}
