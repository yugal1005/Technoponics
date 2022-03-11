import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TempratureWidget extends StatelessWidget {
  const TempratureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
        title: GaugeTitle(
          text: "Temp",
          textStyle: Theme.of(context).textTheme.bodyText2,
        ),
        axes: <RadialAxis>[
          RadialAxis(
              minimum: -50,
              maximum: 50,
              showLabels: false,
              showTicks: false,
              axisLineStyle: AxisLineStyle(
                cornerStyle: CornerStyle.bothCurve,
                color: Theme.of(context).accentColor.withOpacity(0.1),
                thickness: 7,
                thicknessUnit: GaugeSizeUnit.logicalPixel,
              ),
              pointers: <GaugePointer>[
                RangePointer(
                  value: 30,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Theme.of(context).accentColor,
                  width: 7,
                  sizeUnit: GaugeSizeUnit.logicalPixel,
                )
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  positionFactor: 0.1,
                  angle: 90,
                  widget: Text(
                    "30°",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ]),
        ]);
  }
}
