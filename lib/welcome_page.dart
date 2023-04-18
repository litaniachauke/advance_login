import 'package:advance_login/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login.dart';

class WelcomePage extends StatefulWidget {
  String email;

  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String get email => this.email;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/chynoble.jpg"), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: w,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome ",
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(height: 40),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Container(
                        width: w * 0.7,
                        height: h * 0.10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("img/loginbtn.png"),
                              fit: BoxFit.cover),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            AuthController.instance.logout();
                          },
                          child: Center(
                            child: Text(
                              'Log Out!',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: w * 0.1,
                    ),
                    SizedBox(
                      height: w * 0.08,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
