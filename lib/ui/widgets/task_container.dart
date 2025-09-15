import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({
    super.key,
    required this.chipBackgroundColor,
  });

  final Color chipBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 2, left: 8, right: 8),
      child: Container(
        height: 130,
        width: double.maxFinite,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: ListTile(
          title: Text(
            'Task title here.',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task description will be here. Task description will be here.',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Text(
                'Date: 15/09/2025',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 22,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: chipBackgroundColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Canceled',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 2)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.edit_note,
                          size: 19,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        child: Icon(
                          Icons.delete_forever_outlined,
                          size: 19,
                          color: Colors.red,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
