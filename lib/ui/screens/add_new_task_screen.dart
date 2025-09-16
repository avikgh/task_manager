import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/background_widget.dart';

import '../widgets/cached_network_image.dart';
import '../widgets/custom_elevated_button.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            print('Tap on Update Profile');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CachedNetImage(
                url: 'https://cdn-icons-png.flaticon.com/512/8345/8345328.png'),
          ),
        ),
        title: GestureDetector(
          onTap: () {
            print('Tap on Update Profile');
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
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.08),
                  Text(
                    'Add New Task',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 17),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Title'),
                  ),
                  const SizedBox(height: 14),
                  TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(hintText: 'Description'),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 50,
                    width: double.maxFinite,
                    child: CustomElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
