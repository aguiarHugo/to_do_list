import "package:flutter/material.dart";

class ActionButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ActionButtons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.green, // Acesso correto à cor primária
      child: Text(text),
    );
  }
}
