import 'package:flutter/material.dart';
import 'app_router.dart';

void main() {
  runApp(const FlowPilotApp());
}

class FlowPilotApp extends StatelessWidget {
  const FlowPilotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlowPilot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0B1C3D),
          primary: const Color(0xFF0B1C3D),
          secondary: const Color(0xFFF2C94C),
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRouter.home,
    );
  }
}
