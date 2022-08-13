import 'package:flutter/material.dart';

class No01_Container extends StatefulWidget {
  const No01_Container({Key? key}) : super(key: key);

  @override
  State<No01_Container> createState() => _No01_ContainerState();
}

class _No01_ContainerState extends State<No01_Container> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            //位置
            // alignment: Alignment.center,
            // alignment: Alignment(-1, -1), //LU
            // alignment: Alignment(-1, 1), //BU
            // alignment: Alignment(1, -1), //RU
            // alignment: Alignment(1, 1), //RB
            alignment: Alignment(0.5, 0.5), //Center

            //図形内余白
            padding: EdgeInsets.all(20),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
