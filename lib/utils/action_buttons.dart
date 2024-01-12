// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class ActionButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ActionButtons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.purple[800],
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white, // Define a cor do texto para branco
        ),
      ),
    );
  }
}
