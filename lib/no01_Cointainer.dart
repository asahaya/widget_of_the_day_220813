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
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
              boxShadow: [
                //下
                BoxShadow(
                  //shadowは数字が大きいほど濃くなる
                  color: Colors.grey.shade500,
                  //位置
                  offset: Offset(4.0, 4.0),
                  //ぼかし
                  blurRadius: 15.0,
                  //光彩？
                  spreadRadius: 1.0,
                ),
                //上
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
