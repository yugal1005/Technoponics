import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/circular_progress_bar/tds.dart';
import '../widgets/circular_progress_bar/ph.dart';
import '../widgets/day_temp.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  static String routeName = "/user-home-screen";
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
              height: MediaQuery.of(context).size.height * 0.55,
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
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 10,
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 10,
                              right: 10,
                            ),
                            child: TdsWidget(),
                          ),
                        ),
                      ),
                      Container(
                        height: 175,
                        width: 195,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 10,
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 10,
                              right: 10,
                            ),
                            child: PhWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 240,
                    width: 280,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10,
                      // child: SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      child: const DayTemp(),
                    ),
                  ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
