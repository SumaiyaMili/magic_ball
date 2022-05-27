import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Ask Me Anything',
            textAlign: TextAlign.center,
          )),
          backgroundColor: Colors.deepPurple,
        ),
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  //widget item state can be changed
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  State<MagicBallPage> createState() => _MagicBallPage();
}

class _MagicBallPage extends State<MagicBallPage> {
  int imgNumber = 1;

  void changeImage() {
    setState(() {
      imgNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('images/ball$imgNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
