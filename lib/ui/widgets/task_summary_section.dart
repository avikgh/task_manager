import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/task_summary_card.dart';

Row TaskSummarySection() {
  return Row(
    children: [
      TaskSummaryCard(
        taskCount: '04',
        taskType: 'New',
      ),
      TaskSummaryCard(
        taskCount: '08',
        taskType: 'Completed',
      ),
      TaskSummaryCard(
        taskCount: '06',
        taskType: 'Canceled',
      ),
      TaskSummaryCard(
        taskCount: '10',
        taskType: 'Progress',
      ),
    ],
  );
}