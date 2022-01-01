import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jack_sparrow_compass/pages/widgets/dial.dart';

import 'widgets/pointer.dart';

class CompassView extends StatefulWidget {
  @override
  _CompassViewState createState() => _CompassViewState();
}

class _CompassViewState extends State<CompassView> {
  @override
  void initState() {
    // Timer.periodic(const Duration(seconds: 1), (timer) {
    //   setState(() {});
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.orange,
        width: 300,
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: Dial(),
                ),
              ),
            ),
            const Align(
              child: Text('hey'),
            )
          ],
        ));
  }
}
