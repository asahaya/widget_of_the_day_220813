import 'package:flutter/material.dart';

class No09_BNB extends StatefulWidget {
  const No09_BNB({Key? key}) : super(key: key);

  @override
  State<No09_BNB> createState() => _No09_BNBState();
}

class _No09_BNBState extends State<No09_BNB> {
  //bnb初期画面選択
  int _selectedIndex = 0;

  //BNB画面遷移処理
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//理想は各ページでファイルを作成する
  final List<Widget> _pages = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Message',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Account Page',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Setting Page',
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        //BNBの選択によってbodyを入れ替える
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            //すべて表示させるため
            type: BottomNavigationBarType.fixed,
            //初期表示
            currentIndex: _selectedIndex,
            //Navigation
            onTap: _navigationBottomBar,
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
