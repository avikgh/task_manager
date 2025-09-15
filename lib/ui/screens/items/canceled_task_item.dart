import 'package:flutter/material.dart';

class CanceledTaskItem extends StatefulWidget {
  const CanceledTaskItem({super.key});

  @override
  State<CanceledTaskItem> createState() => _CanceledTaskItemState();
}

class _CanceledTaskItemState extends State<CanceledTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 2, left: 8, right: 8),
            child: Container(
              height: 123,
              width: double.maxFinite,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(5)
              ),
              child: ListTile(
                title: Text('Task title here. '),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Task description will be here. Task description will be here. Task description will be here. '),
                    Text('Date: 15/09/2025'),
                    const SizedBox(height: 2),
                    Container(
                      height: 22,
                      width: 80,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF25055),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Canceled', style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold
                          ),),
                          const SizedBox(height: 2)
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          );
        },
      ),
    );
  }
}
