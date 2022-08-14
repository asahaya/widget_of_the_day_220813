import 'package:flutter/material.dart';

class No13_TabBar extends StatefulWidget {
  const No13_TabBar({Key? key}) : super(key: key);

  @override
  State<No13_TabBar> createState() => _No13_TabBarState();
}

class _No13_TabBarState extends State<No13_TabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: Separate(),
    );
  }
}

class Separate extends StatefulWidget {
  const Separate({Key? key}) : super(key: key);

  @override
  State<Separate> createState() => _SeparateState();
}

class _SeparateState extends State<Separate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'TABBER',
            style: TextStyle(letterSpacing: 12.0),
          ),
          centerTitle: true,
          // backgroundColor: Colors.deepPurple[300],
        ),
        body: Column(children: [
          TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          //Expandedでくるまないとエラー
          Expanded(
            child: TabBarView(
              children: [
                One_Page(),
                Two_Page(),
                Three_Page(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class One_Page extends StatelessWidget {
  const One_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(child: Text('1ST TAB')),
    );
  }
}

class Two_Page extends StatelessWidget {
  const Two_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(child: Text('2ST TAB')),
    );
  }
}

class Three_Page extends StatelessWidget {
  const Three_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(child: Text('3ST TAB')),
    );
  }
}
