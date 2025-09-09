import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/items/canceled_task_item.dart';
import 'package:task_manager/ui/screens/items/completed_task_item.dart';
import 'package:task_manager/ui/screens/items/new_task_item.dart';
import 'package:task_manager/ui/screens/items/progress_task_item.dart';
import 'package:task_manager/ui/utility/assets_path.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final List<Widget> _bottomNavItemList = [
    NewTaskItem(),
    CompletedTaskItem(),
    CanceledTaskItem(),
    ProgressTaskItem()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle_outlined),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Avik Ghosh', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            Text('avikgh77@gmail.com', style: TextStyle(
              fontSize: 14
            ),),
          ],
        ),
        titleSpacing: 0,
      ),
      body: _bottomNavItemList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'New'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'Completed'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'Canceled'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'Progress'
          ),
        ],
      ),
    );
  }
}
