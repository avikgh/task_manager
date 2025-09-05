import 'package:flutter/material.dart';

class CanceledTaskItem extends StatefulWidget {
  const CanceledTaskItem({super.key});

  @override
  State<CanceledTaskItem> createState() => _CanceledTaskItemState();
}

class _CanceledTaskItemState extends State<CanceledTaskItem> {
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
