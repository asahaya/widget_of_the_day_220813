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
          body: GridView.builder(
              //配列する個数
              itemCount: 5,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.deepPurple,
                  ),
                );
              })),
    );
  }
}
