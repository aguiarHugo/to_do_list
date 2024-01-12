// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:to_do_list/utils/action_buttons.dart";

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onSave;

  DialogBox({super.key, required this.controller, this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[700],
      content: SizedBox(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              style: const TextStyle(color: Colors.white),
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Adicione uma nova tarefa",
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ActionButtons(text: "Salvar", onPressed: onSave ?? () {}),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
