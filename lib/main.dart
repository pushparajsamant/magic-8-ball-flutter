import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.indigo,
          ),
          backgroundColor: Colors.blue,
          body: MagicBallPage(),
        ),
      ),
    );

class MagicBallPage extends StatefulWidget {
  @override
  State<MagicBallPage> createState() => _State();
}

class _State extends State<MagicBallPage> {
  int magicBallImageNumber = 1;

  void changeMagicBall() {
    setState(() {
      magicBallImageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeMagicBall();
                },
                child: Image(
                  image: AssetImage('images/ball$magicBallImageNumber.png'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
