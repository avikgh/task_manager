import 'package:flutter/material.dart';

class NewTaskItem extends StatefulWidget {
  const NewTaskItem({super.key});

  @override
  State<NewTaskItem> createState() => _NewTaskItemState();
}

class _NewTaskItemState extends State<NewTaskItem> {
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
