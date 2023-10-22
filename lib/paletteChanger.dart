import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Random Colour Palette Generator',
          ),
          centerTitle: true,
        ),
        body: PaletteGenerator(),
      ),
    );
  }
}

class PaletteGenerator extends StatefulWidget {
  const PaletteGenerator({super.key});

  @override
  State<PaletteGenerator> createState() => _PaletteGeneratorState();
}

class _PaletteGeneratorState extends State<PaletteGenerator> {
  var myColors = [
    Colors.amber,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.blue,
    Colors.orange,
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.yellow,
    Colors.cyan,
    Colors.green,
    Colors.teal,
  ];

  var colour1 = Colors.white;
  var colour2 = Colors.white;
  var colour3 = Colors.white;
  var colour4 = Color.fromARGB(255, 255, 255, 255);
  var colour5 = Colors.white;

  paletteChange() {
    setState(
      () {
        colour1 = myColors[Random().nextInt(myColors.length)];
        colour2 = myColors[Random().nextInt(myColors.length)];
        colour3 = myColors[Random().nextInt(myColors.length)];
        colour4 = myColors[Random().nextInt(myColors.length)];
        colour5 = myColors[Random().nextInt(myColors.length)];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: colour1,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: colour2,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: colour3,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: colour4,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: colour5,
            ),
          ),
        ),
        SizedBox(
          child: IconButton(
            icon: Icon(Icons.change_circle),
            onPressed: paletteChange,
          ),
        )
      ],
    );
  }
}
