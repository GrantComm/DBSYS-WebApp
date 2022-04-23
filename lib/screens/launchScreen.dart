import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 300.0, bottom: 300.0),
        child: Column(
          children: [
            Text(
              'JSG Consulting',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'Version 1.0.0',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      )),
    );
  }
}
