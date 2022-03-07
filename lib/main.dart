import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/login_screen.dart';
import 'screens/user_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Technoponics',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(151, 255, 156, 1),
        accentColor: const Color.fromRGBO(220, 110, 103, 1),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Color.fromRGBO(151, 255, 156, 1),
          ),
          headline2: TextStyle(
            fontFamily: "Poppins",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
              fontFamily: "Poppins", fontSize: 15, color: Colors.black),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (ctx) => const MyHomePage(title: 'Flutter Demo Home Page'),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        UserHomeScreen.routeName: (ctx) => const UserHomeScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/img/pexels-golden-jojo-2409038 1.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LoginScreen(statusBarHeight: statusBarHeight),
      ),
    );
  }
}
