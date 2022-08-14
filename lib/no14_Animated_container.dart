import 'package:flutter/material.dart';

class No14_AnimatedContainer extends StatefulWidget {
  const No14_AnimatedContainer({Key? key}) : super(key: key);

  @override
  State<No14_AnimatedContainer> createState() => _No14_AnimatedContainerState();
}

class _No14_AnimatedContainerState extends State<No14_AnimatedContainer> {
  //初期値
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;

  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
      boxColor = Colors.pink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: _expandedBox,
        child: Scaffold(
          backgroundColor: Colors.deepPurple[200],
          body: Center(
              child: AnimatedContainer(
            //1秒で変化完了
            duration: Duration(seconds: 1),
            height: boxHeight,
            width: boxWidth,
            color: boxColor,
          )),
        ),
      ),
    );
  }
}
