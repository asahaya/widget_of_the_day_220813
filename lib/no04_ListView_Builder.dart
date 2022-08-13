import 'package:flutter/material.dart';

class No04_ListView_Builder extends StatefulWidget {
  const No04_ListView_Builder({Key? key}) : super(key: key);

  @override
  State<No04_ListView_Builder> createState() => _No04_ListView_BuilderState();
}

class _No04_ListView_BuilderState extends State<No04_ListView_Builder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            MySquare(),
            MySquare(),
            MySquare(),
            MySquare(),
          ],
        ),
      ),
    );
  }
}

//コードをきれいにするために分離しましょう
class MySquare extends StatelessWidget {
  const MySquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepOrange[200],
      ),
    );
  }
}
