import 'package:flutter/material.dart';

class RegularButton extends StatelessWidget {
  String title;
  VoidCallback onPressed;
  Color color;
  RegularButton(
      {required this.title, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 70,
        width: 300,
        child: Center(
          child: Text(
            this.title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: this.color,
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
      ),
      onTap: onPressed,
    );
  }
}
