import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new_task_screen.dart';

import '../../widgets/task_container.dart';
import '../../widgets/task_summary_card.dart';

class NewTaskItem extends StatefulWidget {
  const NewTaskItem({super.key});

  @override
  State<NewTaskItem> createState() => _NewTaskItemState();
}

class _NewTaskItemState extends State<NewTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAF7F5),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _onTapMoveToAddNewTaskScreen(context);
          },
          child: Icon(Icons.add, size: 20, color: Colors.white),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TaskSummaryCard(taskCount: '04', taskType: 'New',),
                  TaskSummaryCard(taskCount: '08', taskType: 'Completed',),
                  TaskSummaryCard(taskCount: '06', taskType: 'Canceled',),
                  TaskSummaryCard(taskCount: '10', taskType: 'Progress',),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TaskContainer(
                    chipBackgroundColor: Color(0xFF17C2E8),
                    title: 'New',
                  );
                },
              ),
            ),
          ],
        ));
  }

  void _onTapMoveToAddNewTaskScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddNewTaskScreen()));
  }
}
