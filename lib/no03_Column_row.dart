import 'package:flutter/material.dart';

class No03_Column_Row extends StatefulWidget {
  const No03_Column_Row({Key? key}) : super(key: key);

  @override
  State<No03_Column_Row> createState() => _No03_Column_RowState();
}

class _No03_Column_RowState extends State<No03_Column_Row> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          //Column向きに全体を中央揃え
          mainAxisAlignment: MainAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.start, //上
          // mainAxisAlignment: MainAxisAlignment.end, //下
          // mainAxisAlignment: MainAxisAlignment.spaceAround, //等間隔分け（上下余白あり）
          // mainAxisAlignment: MainAxisAlignment.spaceBetween, //等間隔分け（上下余白なし）
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //等間隔分け（上下余白あり）
          //Columnと逆向きの左揃え
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: 100,
              height: 100,
              color: Colors.deepPurple[600],
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.deepPurple[400],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }
}
