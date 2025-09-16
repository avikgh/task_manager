import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/items/canceled_task_item.dart';
import 'package:task_manager/ui/screens/items/completed_task_item.dart';
import 'package:task_manager/ui/screens/items/new_task_item.dart';
import 'package:task_manager/ui/screens/items/progress_task_item.dart';
import 'package:task_manager/ui/screens/update_profile_screen.dart';
import 'package:task_manager/ui/utility/assets_path.dart';
import 'package:task_manager/ui/widgets/cached_network_image.dart';

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
        leading: GestureDetector(
          onTap: () {
            _onTapMoveToUpdateProfileScreen(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CachedNetImage(
                url: 'https://cdn-icons-png.flaticon.com/512/8345/8345328.png'),
          ),
        ),
        title: GestureDetector(
          onTap: () {
            _onTapMoveToUpdateProfileScreen(context);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Avik Ghosh',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                'avikgh77@gmail.com',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        titleSpacing: 5,
      ),
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

  void _onTapMoveToUpdateProfileScreen(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => UpdateProfileScreen()));
  }
}
