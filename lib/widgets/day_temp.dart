import 'package:flutter/material.dart';

import 'circular_progress_bar/humidity.dart';
import 'circular_progress_bar/temprature.dart';

class DayTemp extends StatelessWidget {
  const DayTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          width: 146,
          child: const TempratureWidget(),
        ),
        Positioned(
          left: 150,
          child: Container(
            height: 160,
            width: 146,
            child: const HumidityWidget(),
          ),
        ),
        Positioned(
          top: 152,
          child: Container(
            height: 80,
            width: 293,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 30, top: 10, bottom: 10),
              child: Table(
                children: [
                  TableRow(children: [
                    Text(
                      "Day Low",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Day High",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      "23°   10%",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "27°   30%",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ])
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
