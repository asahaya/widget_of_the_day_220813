import 'package:flutter/material.dart';

class a_no02_DragAndDrop extends StatelessWidget {
  const a_no02_DragAndDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: a02Separate(),
    );
  }
}

class a02Separate extends StatefulWidget {
  const a02Separate({Key? key}) : super(key: key);

  @override
  State<a02Separate> createState() => _a02SeparateState();
}

class _a02SeparateState extends State<a02Separate> {
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DragTarget(
            builder: (context, _, __) => Container(
              color: color,
              width: 200,
              height: 200,
            ),
          ),
          Draggable(
            child: Container(
              color: Colors.green,
              width: 200,
              height: 200,
            ),
            feedback: Container(
              color: Colors.orange,
              width: 200,
              height: 200,
            ),
            childWhenDragging: Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
          )
        ],
      )),
    );
  }
}
