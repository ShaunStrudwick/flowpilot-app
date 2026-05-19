import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/workflow_card.dart';

class WorkflowsScreen extends StatelessWidget {
  const WorkflowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: workflows.length,
      itemBuilder: (ctx, i) => WorkflowCard(workflow: workflows[i]),
    );
  }
}
