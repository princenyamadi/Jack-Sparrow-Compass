import 'package:flutter/material.dart';
import 'package:jack_sparrow_compass/pages/clock_view.dart';
import 'package:jack_sparrow_compass/pages/compass_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF2D2F41),
        child: CompassView(),
      ),
    );
  }
}
