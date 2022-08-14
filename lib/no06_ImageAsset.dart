import 'package:flutter/material.dart';

class No06_ImageAsset extends StatefulWidget {
  const No06_ImageAsset({Key? key}) : super(key: key);

  @override
  State<No06_ImageAsset> createState() => _No06_ImageAssetState();
}

class _No06_ImageAssetState extends State<No06_ImageAsset> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Image.asset('assets/images/flutter_image.png')),
      ),
    );
  }
}
