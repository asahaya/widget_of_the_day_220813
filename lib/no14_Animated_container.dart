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
  double boxX = -1;
  double boxY = -1;

  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
      boxColor = Colors.pink;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
      print("duration!!!!!!");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: _moveBox,
        child: Scaffold(
          backgroundColor: Colors.deepPurple[200],
          body: AnimatedContainer(
            //1秒で変化完了
            duration: Duration(seconds: 1),
            alignment: Alignment(boxX, boxY),
            //Containerで内包しないと実行されない？？
            child: Container(
              height: boxHeight,
              width: boxWidth,
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
