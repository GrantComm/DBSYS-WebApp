import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  String title;
  Function onPressed;
  LargeButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.title,
        style: Theme.of(context).textTheme.displayLarge,
      ),
      decoration: BoxDecoration(),
    );
  }
}
