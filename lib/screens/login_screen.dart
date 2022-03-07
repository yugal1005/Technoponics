import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import './user_home_screen.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login-screen";
  final statusBarHeight;
  LoginScreen({
    Key? key,
    this.statusBarHeight,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  Widget _buildSignupOptions(String img) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.grey.withOpacity(0.5),
      onTap: () {
        print("hello");
      },
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 50,
        width: MediaQuery.of(context).size.width * 0.275,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.network(img),
        ),
      ),
    );
  }

  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overScroll) {
        overScroll.disallowGlow();
        return false;
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      widget.statusBarHeight) *
                  0.15,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Technoponics",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.3),
              child: const Text(
                "By",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.3),
              alignment: Alignment.center,
              child: Text(
                "Arancia Tech",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      widget.statusBarHeight) *
                  0.05,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.075),
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                // shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: Theme.of(context).textTheme.bodyText1,
                        hintText: "Email",
                        border: InputBorder.none,
                        focusColor: Colors.white,
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Please enter the password";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintStyle: Theme.of(context).textTheme.bodyText1,
                        hintText: "Password",
                        border: InputBorder.none,
                        focusColor: Colors.white,
                      ),
                      obscureText: true,
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Please enter the password";
                        } else {
                          return null;
                        }
                      },
                      // keyboardType: TextInputType.,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: RichText(
                      text: TextSpan(
                        text: "Forget Password? ",
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("hello");
                              },
                            text: " Reset",
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 25),
                    child: InkWell(
                      splashColor: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        if (_formKey.currentState != null) {
                          isValid = _formKey.currentState!.validate();
                        }
                        if (isValid) {
                          Navigator.pushReplacementNamed(
                              context, UserHomeScreen.routeName);
                        }
                      },
                      child: Ink(
                        padding: const EdgeInsets.all(17),
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 70, right: 70, top: 15, bottom: 10),
              child: const Divider(
                color: Colors.white,
                thickness: 3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSignupOptions(
                    "https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png"),
                _buildSignupOptions(
                    "https://www.transparentpng.com/thumb/google-logo/colorful-google-logo-transparent-clipart-download-u3DWLj.png"),
                _buildSignupOptions(
                    "https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png"),
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: RichText(
                text: TextSpan(
                  text: "New here? ",
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("hello");
                        },
                      text: " Create account here",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
