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
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.amber,
        ),
        body: Container(),
      ),
    );
  }
}

class No20_PageView extends StatelessWidget {
  const No20_PageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: No20_Separate(),
    );
  }
}

class No20_Separate extends StatelessWidget {
  final _controller = PageController();
  No20_Separate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPOST1(),
          MyPOST2(),
        ],
      ),
    );
  }
}

class MyPOST1 extends StatelessWidget {
  const MyPOST1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}

class MyPOST2 extends StatelessWidget {
  const MyPOST2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
    );
  }
}
