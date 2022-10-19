// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:logins/config/palette.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 320,
              decoration: const BoxDecoration(
                  image: ((DecorationImage(
                      image: AssetImage("assets/R.jpg"), fit: BoxFit.fill)))),
              child: Container(
                padding: const EdgeInsets.only(top: 90, left: 20),
                color: Colors.black12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "RichMay ",
                            style: GoogleFonts.adamina(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Restaurant",
                            style: GoogleFonts.adamina(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 0),
                    Padding(padding: EdgeInsets.all(30)),
                    Text(
                      "sign up to continue",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 240,
            child: Container(
              height: 350,
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen
                                      ? Palette.textColor1
                                      : Palette.textColor),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                height: 3,
                                width: 55,
                                color: Colors.black,
                              ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Palette.textColor1
                                      : Palette.textColor),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                height: 3,
                                width: 80,
                                color: Colors.black,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Palette.googleColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Palette.facebookColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Palette.facebookColor),
                            ),
                            hintText: "User Name",
                            hintStyle: TextStyle(
                                fontSize: 15, color: Palette.textColor),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              buildText(Icons.email, "User Name", false, false),
                              buildText(
                                  Icons.email_outlined, "Email", false, true),
                              buildText(Icons.password_outlined, "Password",
                                  true, false),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  TextField buildText(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Palette.googleColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.facebookColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.facebookColor),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 15, color: Palette.textColor),
      ),
    );
  }
}
