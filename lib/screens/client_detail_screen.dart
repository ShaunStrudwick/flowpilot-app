import 'package:flutter/material.dart';
import '../models/client.dart';
import '../data/mock_data.dart';

class ClientDetailScreen extends StatelessWidget {
  final Client client;

  const ClientDetailScreen({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    final clientWorkflows = workflows
        .where((w) => client.workflowIds.contains(w.id))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(client.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(client.email),
            const SizedBox(height: 8),
            Chip(label: Text(client.status)),
            const SizedBox(height: 24),
            Text('Workflows', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: clientWorkflows.length,
                itemBuilder: (ctx, i) {
                  final w = clientWorkflows[i];
                  return Card(
                    child: ListTile(
                      title: Text(w.name),
                      subtitle: Text(w.description),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Workflow run triggered (demo).'),
                  ),
                );
              },
              icon: const Icon(Icons.play_arrow),
              label: const Text('Run Workflow'),
            ),
          ],
        ),
      ),
    );
  }
}
