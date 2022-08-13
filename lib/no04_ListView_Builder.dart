import 'package:flutter/material.dart';

class No04_ListView_Builder extends StatefulWidget {
  const No04_ListView_Builder({Key? key}) : super(key: key);

  @override
  State<No04_ListView_Builder> createState() => _No04_ListView_BuilderState();
}

class _No04_ListView_BuilderState extends State<No04_ListView_Builder> {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCircle(
                    textChild: _stories[index],
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  //個数
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return MySquare(
                      childText: _posts[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

//コードをきれいにするために分離しましょう
class MySquare extends StatelessWidget {
  final String childText;

  MySquare({
    Key? key,
    required this.childText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 200,
        color: Colors.deepOrange[200],
        child: Center(
          child: Text(
            childText,
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class MyCircle extends StatelessWidget {
  final String textChild;
  MyCircle({Key? key, required this.textChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[200],
        ),
        child: Center(
          child: Text(
            textChild,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
