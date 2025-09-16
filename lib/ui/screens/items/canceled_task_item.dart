import 'package:flutter/material.dart';

import '../../widgets/task_container.dart';

class CanceledTaskItem extends StatefulWidget {
  const CanceledTaskItem({super.key});

  @override
  State<CanceledTaskItem> createState() => _CanceledTaskItemState();
}

class _CanceledTaskItemState extends State<CanceledTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F5),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskContainer(
            chipBackgroundColor: Color(0xFFF25055),
            title: 'Canceled',
          );
        },
      ),
    );
  }
}
