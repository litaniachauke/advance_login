import 'package:advance_login/auth_controller.dart';
import 'package:advance_login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "f.png", "t.png"];
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
                    image: AssetImage("img/abstract.jpg"), fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.16,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("img/images.png"),
                  )
                ],
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
                    SizedBox(height: 40),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2))
                          ]),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.deepOrangeAccent,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(2, 2),
                                color: Colors.grey.withOpacity(0.5))
                          ]),
                      child: TextField(
                        controller: passwordController,
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Passcode",
                            prefixIcon: Icon(
                              Icons.security,
                              color: Colors.deepOrangeAccent,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(2, 2),
                                color: Colors.grey.withOpacity(0.5))
                          ]),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          AuthController.instance.register(
                              emailController.text.trim(),
                              passwordController.text.trim());
                        },
                        child: Container(
                          width: w * 0.7,
                          height: h * 0.10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("img/loginbtn.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Center(
                            child: Text(
                              'Register',
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
                      height: w * 0.08,
                    ),
                    Center(
                      child: RichText(
                          text: TextSpan(
                              text: "Have an account?",
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 20),
                              children: [
                            TextSpan(
                                text: " Log in!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.to(() => LoginPage())),
                          ])),
                    ),
                    SizedBox(
                      height: w * 0.08,
                    ),
                    Center(
                      child: RichText(
                          text: TextSpan(
                        text: "Sign Up Using One of the Following Methods",
                        style: TextStyle(color: Colors.grey[500], fontSize: 15),
                      )),
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Wrap(
                          children: List<Widget>.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("img/" + images[index]),
                            ),
                          ),
                        );
                      })),
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
