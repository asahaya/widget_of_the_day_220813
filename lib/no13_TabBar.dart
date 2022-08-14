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
          backgroundColor: Colors.deepPurple[300],
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
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Center(
        child: Text(
          'First Page',
          style: TextStyle(fontSize: 20, letterSpacing: 3.0),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Center(
        child: Text(
          'Second Page',
          style: TextStyle(fontSize: 20, letterSpacing: 3.0),
        ),
      ),
    );
  }
}

//MaterialAppとScaffodを同じclassないに書くと
//FlutterError (Navigator operation requested with a context that does not include a Navigator. The context used to push or pop routes from the Navigator must be that of a widget that is a descendant of a Navigator widget.)
//になるので分離させる