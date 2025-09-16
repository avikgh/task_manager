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
      theme: _buildLightTheme(),
      home: SplashScreen(),
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AssetsPath.themeColor,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            color: Colors.black87, fontSize: 28, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AssetsPath.themeColor,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        )
      )
    );
  }
}
