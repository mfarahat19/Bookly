import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

void customSnakBar(context, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: style20(),
      ),
    ),
  );
}
