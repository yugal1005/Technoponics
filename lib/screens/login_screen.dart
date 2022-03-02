import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final statusBarHeight;
  LoginScreen({
    Key? key,
    this.statusBarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size.height - statusBarHeight) * 0.2,
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
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.3),
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
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3),
          alignment: Alignment.center,
          child: Text(
            "Arancia Tech",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        SizedBox(
          height:
              (MediaQuery.of(context).size.height - statusBarHeight) * 0.075,
        ),
        Container(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
          alignment: Alignment.centerLeft,
          child: Text(
            "Login",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
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
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
