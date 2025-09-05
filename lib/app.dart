import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';
import 'package:task_manager/ui/utility/assets_path.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white)
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white)
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: AssetsPath.themeColor,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey
          ),
          selectedLabelStyle: TextStyle(
            color: AssetsPath.themeColor
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.grey
          )
        )
      ),
      home: SplashScreen(),
    );
  }
}
