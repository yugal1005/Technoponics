import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TdsWidget extends StatelessWidget {
  const TdsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
        title: GaugeTitle(
          text: "TDS",
          textStyle: Theme.of(context).textTheme.bodyText2,
        ),
        axes: <RadialAxis>[
          RadialAxis(
              minimum: 0,
              maximum: 1200,
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
                  value: 1000,
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
                    "1000",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ]),
        ]);
  }
}
