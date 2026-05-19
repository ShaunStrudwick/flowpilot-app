import 'package:flutter/material.dart';
import '../models/client.dart';
import '../app_router.dart';

class ClientCard extends StatelessWidget {
  final Client client;

  const ClientCard({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(client.name),
        subtitle: Text(client.email),
        trailing: Chip(label: Text(client.status)),
        onTap: () {
          Navigator.of(context).pushNamed(
            AppRouter.clientDetail,
            arguments: client,
          );
        },
      ),
    );
  }
}
