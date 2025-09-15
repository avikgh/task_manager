import 'package:flutter/material.dart';

class CompletedTaskItem extends StatefulWidget {
  const CompletedTaskItem({super.key});

  @override
  State<CompletedTaskItem> createState() => _CompletedTaskItemState();
}

class _CompletedTaskItemState extends State<CompletedTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('New Task'),
              subtitle: Text('This a new task. which was made right now.'),
            ),
          );
        },
      ),
    );
  }
}
