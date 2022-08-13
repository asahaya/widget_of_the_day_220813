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
            height: 200,
            width: 200,
            //decorationを使う際はColorを中に
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
