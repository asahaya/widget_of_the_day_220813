import 'package:flutter/material.dart';

class a_no_01_Hero extends StatelessWidget {
  const a_no_01_Hero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: a01Separate(),
    );
  }
}

class a01Separate extends StatefulWidget {
  const a01Separate({Key? key}) : super(key: key);

  @override
  State<a01Separate> createState() => _a01SeparateState();
}

class _a01SeparateState extends State<a01Separate> {
  String imagePath = 'assets/images/flutter_image.png';
  String tagText = 'flutterlogo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PageRoute(
              imagePath: imagePath,
              tagText: tagText,
            ),
          ));
        },
        child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Hero(
                  tag: tagText,
                  child: Image.asset(
                    imagePath,
                    width: 200,
                  ))),
        ),
      ),
    );
  }
}

class PageRoute extends StatelessWidget {
  final imagePath;
  final tagText;
  const PageRoute({Key? key, required this.imagePath, required this.tagText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child:
              Center(child: Hero(tag: tagText, child: Image.asset(imagePath)))),
    );
  }
}
