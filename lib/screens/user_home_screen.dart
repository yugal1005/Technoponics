import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  static String routeName = "/user-home-screen";

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 34),
              child: Text(
                "Technoponics",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey, Yugal",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "Here's all the info you need",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      "assets/img/Screenshot_20211202_212026.png",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              child: StaggeredGrid.count(
                crossAxisCount: 1,
                // mainAxisSpacing: 3,
                children: [
                  StaggeredGrid.count(
                    crossAxisCount: 2,
                    children: [
                      Container(
                        height: 175,
                        width: 195,
                        child: const Card(
                          elevation: 10,
                          child: Text("Hello"),
                        ),
                      ),
                      Container(
                        height: 175,
                        width: 195,
                        child: const Card(
                          elevation: 10,
                          child: Text("World"),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 215,
                    width: 280,
                    child: const Card(
                      elevation: 10,
                      child: Text("What to do"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
