import 'package:flutter/material.dart';

class ProgressTaskItem extends StatefulWidget {
  const ProgressTaskItem({super.key});

  @override
  State<ProgressTaskItem> createState() => _ProgressTaskItemState();
}

class _ProgressTaskItemState extends State<ProgressTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card();
        },
      ),
    );
  }
}
