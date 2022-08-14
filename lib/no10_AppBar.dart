import 'package:flutter/material.dart';

class No10_AppBar extends StatefulWidget {
  const No10_AppBar({Key? key}) : super(key: key);

  @override
  State<No10_AppBar> createState() => _No10_AppBarState();
}

class _No10_AppBarState extends State<No10_AppBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //primarySwatch=ThemeData内の色プロパティ全体を以下の色に優先させる
      // theme: ThemeData(
      //   primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          //背景
          backgroundColor: Colors.transparent,
          elevation: 9,
        ),
      ),
    );
  }
}
