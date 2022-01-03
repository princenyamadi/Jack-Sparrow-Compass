import 'package:flutter/material.dart';
import 'package:jack_sparrow_compass/custom/custom_column.dart';
import 'package:jack_sparrow_compass/pages/homepgae.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Foo());
  }
}

class Foo extends StatefulWidget {
  const Foo({Key? key}) : super(key: key);

  @override
  _FooState createState() => _FooState();
}

class _FooState extends State<Foo> {
  @override
  Widget build(BuildContext context) {
    return CustomColumn(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'A definitive guide to \nRenderObjects in flutter to',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
        ),
        const Padding(
          padding: const EdgeInsets.all(16),
          child: const Text(
            'by creativecreatormaybenot',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
