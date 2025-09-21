import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/items/canceled_task_item.dart';
import 'package:task_manager/ui/screens/items/completed_task_item.dart';
import 'package:task_manager/ui/screens/items/new_task_item.dart';
import 'package:task_manager/ui/screens/items/progress_task_item.dart';
import 'package:task_manager/ui/utility/assets_path.dart';
import '../widgets/custom_appbar.dart';

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
      appBar: CustomAppBar(context),
      body: _bottomNavItemList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AssetsPath.themeColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.black54,
        currentIndex: _currentIndex,
        onTap: (index) {
          if (mounted) {
            _currentIndex = index;
            setState(() {});
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined),
              label: 'New',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_available), label: 'Completed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_busy), label: 'Canceled'),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_repeat), label: 'Progress'),
        ],
      ),
    );
  }
}
