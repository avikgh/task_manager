import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new_task_screen.dart';
import 'package:task_manager/ui/widgets/task_summary_section.dart';
import '../../widgets/task_container.dart';

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
              child: TaskSummarySection(),
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
