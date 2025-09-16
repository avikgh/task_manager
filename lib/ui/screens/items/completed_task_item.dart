import 'package:flutter/material.dart';

import '../../widgets/task_container.dart';

class CompletedTaskItem extends StatefulWidget {
  const CompletedTaskItem({super.key});

  @override
  State<CompletedTaskItem> createState() => _CompletedTaskItemState();
}

class _CompletedTaskItemState extends State<CompletedTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F5),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskContainer(chipBackgroundColor: Color(0xFF21BF73));
        },
      ),
    );
  }
}
