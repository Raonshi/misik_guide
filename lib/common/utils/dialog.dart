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

void showConfirmDialog(BuildContext context, String message, Function() onConfirm) {
  showDialog(
    context: context,
    builder: (subContext) {
      return AlertDialog(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(subContext),
            child: const Text("cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(subContext);
              onConfirm();
            },
            child: const Text("confirm"),
          )
        ],
      );
    },
  );
}

void showActionDialog(BuildContext context, Widget content) {
  showDialog(
    context: context,
    builder: (subContext) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              content,
              const SizedBox(height: 20.0),
              IconButton.filled(
                onPressed: () => Navigator.pop(subContext),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        ),
      );
    },
  );
}
