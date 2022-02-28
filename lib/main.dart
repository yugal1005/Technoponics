import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
            fontSize: 30,
            color: Color.fromRGBO(151, 255, 156, 1),
          ),
          headline2: TextStyle(
            fontFamily: "Poppins",
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/img/pexels-golden-jojo-2409038 1.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Technoponics",
                style: Theme.of(context).textTheme.headline1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
