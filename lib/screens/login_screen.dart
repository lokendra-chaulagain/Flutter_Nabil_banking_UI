import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  // Color primaryColor = Color();
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
      body: Container(
        height: 500,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 320,
                width: screenWidth,
                color: Colors.green,
                // child: Row(
                //   children: const [
                //     Icon(
                //       Icons.calendar_month_outlined,
                //       color: Colors.black,
                //     ),
                //   ],
                // ),
              ),
            ),
            Positioned(
              top: 300,
              left: 30,
              child: Container(
                width: 320,
                height: 150,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              top: 120,
              left: 20,
              right: 20,
              child: Container(
                height: 160,
                width: 370,
                color: Colors.white,
              ),
            ),
            //
            // const SizedBox(height: 40),
            Positioned(
              top: 60,
              child: Row(
                children: [
                  const Icon(
                    Icons.mail,
                    size: 40,
                    color: Colors.white,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
