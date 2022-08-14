import 'package:flutter/material.dart';

class No07_GridView_Builder extends StatefulWidget {
  const No07_GridView_Builder({Key? key}) : super(key: key);

  @override
  State<No07_GridView_Builder> createState() => _No07_GridView_BuilderState();
}

class _No07_GridView_BuilderState extends State<No07_GridView_Builder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          //横に並べる数
          crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.deepPurple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.deepPurple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
