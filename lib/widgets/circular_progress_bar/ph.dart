import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PhWidget extends StatelessWidget {
  const PhWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
        title: GaugeTitle(
          text: "pH",
          textStyle: Theme.of(context).textTheme.bodyText2,
        ),
        axes: <RadialAxis>[
          RadialAxis(
              minimum: 0,
              maximum: 14,
              showLabels: false,
              showTicks: false,
              axisLineStyle: AxisLineStyle(
                cornerStyle: CornerStyle.bothCurve,
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                thickness: 7,
                thicknessUnit: GaugeSizeUnit.logicalPixel,
              ),
              pointers: <GaugePointer>[
                RangePointer(
                  value: 5.8,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Theme.of(context).primaryColor,
                  width: 7,
                  sizeUnit: GaugeSizeUnit.logicalPixel,
                )
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  positionFactor: 0.1,
                  angle: 90,
                  widget: Text(
                    "5.8",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ]),
        ]);
  }
}
