import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlue[900],
            )),
        Expanded(flex: 3, child: Container()),
      ],
    );
  }
}
