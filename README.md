# FlowPilot – Automated Client Workflow Hub

A Flutter application for managing client workflows and automating business processes.

## Features

- 📋 **Client Management**: View and manage all your clients
- 🔄 **Workflow Automation**: Define and run automated workflows for clients
- 🎯 **Status Tracking**: Track client status throughout their journey
- 📱 **Mobile First**: Built with Flutter for cross-platform support

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (included with Flutter)
- Xcode (for iOS development)
- Android Studio (for Android development)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/ShaunStrudwick/flowpilot-app.git
cd flowpilot-app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart              # App entry point
├── app_router.dart        # Navigation routes
├── models/                # Data models
│   ├── client.dart
│   └── workflow.dart
├── screens/               # App screens
│   ├── home_screen.dart
│   ├── clients_screen.dart
│   ├── client_detail_screen.dart
│   └── workflows_screen.dart
├── widgets/               # Reusable widgets
│   ├── client_card.dart
│   └── workflow_card.dart
└── data/                  # Mock data
    └── mock_data.dart
```

## Architecture

- **Material Design 3**: Modern Flutter UI design
- **Navigation**: Onboard router for navigation management
- **State Management**: Stateful widgets for local state

## Future Enhancements

- [ ] Backend API integration
- [ ] State management (Provider/Riverpod)
- [ ] Database persistence (Hive/SQLite)
- [ ] Push notifications
- [ ] Cloud sync
- [ ] Advanced analytics

## License

MIT License - see LICENSE file for details

## Support

For issues or questions, please open an issue on GitHub.
