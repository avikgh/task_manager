import 'package:flutter/material.dart';

import '../../widgets/task_container.dart';
import '../../widgets/task_summary_section.dart';

class ProgressTaskItem extends StatefulWidget {
  const ProgressTaskItem({super.key});

  @override
  State<ProgressTaskItem> createState() => _ProgressTaskItemState();
}

class _ProgressTaskItemState extends State<ProgressTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F5),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: TaskSummarySection(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return TaskContainer(
                  chipBackgroundColor: Color(0xFFCC0C9F),
                  title: 'Progress',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
