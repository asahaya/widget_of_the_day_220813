import 'package:flutter/material.dart';

class No11_Drawer extends StatefulWidget {
  const No11_Drawer({Key? key}) : super(key: key);

  @override
  State<No11_Drawer> createState() => _No11_DrawerState();
}

class _No11_DrawerState extends State<No11_Drawer> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DRAWER',
          //letterSpacing=文字間隔
          //wordSpacing  =単語間隔
          style: TextStyle(letterSpacing: 12.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(fontSize: 35, letterSpacing: 15.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20, letterSpacing: 3.0),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 20, letterSpacing: 3.0),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
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