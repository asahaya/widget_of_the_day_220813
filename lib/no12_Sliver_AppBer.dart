import 'package:flutter/material.dart';

class No12_SliverAppBar extends StatefulWidget {
  const No12_SliverAppBar({Key? key}) : super(key: key);

  @override
  State<No12_SliverAppBar> createState() => _No12_SliverAppBarState();
}

class _No12_SliverAppBarState extends State<No12_SliverAppBar> {
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
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[300],
          leading: Icon(Icons.menu),
          title: Text(
            'SLIVERAPPBER',
            style: TextStyle(letterSpacing: 10.0),
          ),
          expandedHeight: 250,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 400,
                color: Colors.deepPurple[200],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 400,
                color: Colors.deepPurple[200],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
