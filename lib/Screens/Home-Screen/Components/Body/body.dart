import 'package:flutter/material.dart';
import 'dart:math';

class homeBody extends StatefulWidget {
  const homeBody({Key key}) : super(key: key);

  @override
  _homeBodyState createState() => _homeBodyState();
}

class _homeBodyState extends State<homeBody> {
  int leftDie = 3;
  int rightDie = 5;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: changeFace,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/dice$leftDie.png"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/dice$rightDie.png"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void changeFace() {
    return setState(() {
      rightDie = Random().nextInt(6) + 1;
      leftDie = Random().nextInt(6) + 1;
    });
  }
}
