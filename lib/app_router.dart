import 'package:flutter/material.dart';
import 'models/client.dart';
import 'screens/client_detail_screen.dart';
import 'screens/home_screen.dart';

class AppRouter {
  static const home = '/';
  static const clientDetail = '/client-detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case clientDetail:
        final client = settings.arguments as Client;
        return MaterialPageRoute(
          builder: (_) => ClientDetailScreen(client: client),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
