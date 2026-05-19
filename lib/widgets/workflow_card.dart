import 'package:flutter/material.dart';
import '../models/workflow.dart';

class WorkflowCard extends StatelessWidget {
  final Workflow workflow;

  const WorkflowCard({super.key, required this.workflow});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(workflow.name),
        subtitle: Text(workflow.description),
      ),
    );
  }
}
