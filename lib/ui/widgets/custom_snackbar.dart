import 'package:flutter/material.dart';

void showSnackBar(String content, bool isError, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: isError ? Colors.red : Colors.black12,
    )
  );
}