import 'package:flutter/material.dart';

class No09_BNB extends StatefulWidget {
  const No09_BNB({Key? key}) : super(key: key);

  @override
  State<No09_BNB> createState() => _No09_BNBState();
}

class _No09_BNBState extends State<No09_BNB> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 50),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            //すべて表示させるため
            type: BottomNavigationBarType.fixed,
            items: [
              //2つ以上並べないとエラー
              //labelをnullにするとエラー

              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'person'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'setting'),
            ]),
      ),
    );
  }
}
