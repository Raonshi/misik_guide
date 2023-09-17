import 'package:flutter/material.dart';

void showInfoDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (subContext) {
      return AlertDialog(
        title: const Text("infomation"),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(subContext),
            child: const Text("confirm"),
          )
        ],
      );
    },
  );
}
