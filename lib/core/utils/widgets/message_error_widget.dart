import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MessageErrorWidget extends StatelessWidget {
  final String error;
  const MessageErrorWidget({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Error'),
      content: Text(error),
      actions: [
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: const Text('OK'),
        )
      ],
    );
  }
}