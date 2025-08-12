import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      debugShowCheckedModeBanner: false,
      home: BackgroundWidget(child: Center()),
    );
  }
}
