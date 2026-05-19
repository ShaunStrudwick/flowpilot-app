import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/client_card.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: clients.length,
      itemBuilder: (ctx, i) => ClientCard(client: clients[i]),
    );
  }
}
