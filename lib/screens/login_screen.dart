import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:nabil_banking_app_ui/widgets/big_text.dart';
import 'package:nabil_banking_app_ui/widgets/custom_button.dart';
import 'package:nabil_banking_app_ui/widgets/custom_check_box.dart';
import 'package:nabil_banking_app_ui/widgets/custom_form_field.dart';
import 'package:nabil_banking_app_ui/widgets/custom_icon.dart';
import 'package:nabil_banking_app_ui/widgets/small_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //--------------
  double screenHeight = 0;
  double screenWidth = 0;
  final primaryColor = const Color.fromARGB(0, 178, 93, 1);
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              height: 710,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 320,
                      width: screenWidth,
                      // color: Colors.green,
                      color: Colors.green,
                    ),
                  ),
                  //Top Row Like AppBar-----------------------
                  Positioned(
                    top: 50,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            CustomIcon(icon: Icons.mail),
                            SmallText(
                              text: "Calandar",
                              color: Colors.white,
                            )
                          ],
                        ),
                        const BigText(
                          text: "NABIL",
                          color: Colors.white,
                        ),
                        const BigText(
                          text: "SmartBank",
                          color: Colors.white,
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
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 14),
                                color: Colors.yellow,
                                height: 50,
                                width: 150,
                                child: const Image(
                                  image:
                                      AssetImage("assets/images/fonepay.png"),
                                ),
                              ),
                              // const Text("Load more"
                              //),
                              const SizedBox(width: 110),
                              const SmallText(
                                text: "Load More",
                                color: Colors.green,
                              ),
                              const CustomIcon(
                                icon: Icons.arrow_forward,
                                color: Colors.green,
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              width: 370,
                              height: 90,
                              color: Colors.pink,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 20,
                                itemBuilder: ((context, index) {
                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: CircleAvatar(
                                            // child: SizedBox(width: 10),
                                            radius: 28,
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                      ),
                                      const SmallText(
                                        text: "Hello",
                                      )
                                    ],
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
                    top: 280,
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
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Column(
                          children: [
                            const BigText(
                              text: "Good Morning!",
                              color: Colors.green,
                            ),
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
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: "Tap Here",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            SmallText(
                              text: "Forgot Password",
                              color: Colors.green.shade600,
                              fontWeight: FontWeight.w700,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //==================================================================>
                ],
              ),

              //====================================================
            ),
            const SizedBox(height: 20),
            Container(
              width: screenWidth,
              height: 80,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: 380,
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
