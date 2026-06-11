# KnowYourNihongo

A cross-platform Flutter application for learning Japanese Hiragana and basic vocabulary. Built with FlutterFlow and Firebase.

## Features

- **Hiragana Learning** - Browse all hiragana characters with a swipeable PageView interface
- **Writing Practice** - Freehand drawing practice for every hiragana row (A, K, S, T, N, H, M, Y, R, W/N) with stroke tracing, undo, and clear
- **Vocabulary** - 6 categories (Animals, Food, Family, Greetings, Places, Vehicles) with ~14 words each, all with native pronunciation audio
- **Quiz** - Interactive quiz module with scoring out of 10
- **Authentication** - Multiple sign-in methods: Email/Password, Google, Apple, GitHub, Anonymous, Phone
- **Theme** - Light and dark mode with persistence
- **Animations** - Smooth page transitions and animated entrance effects

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Flutter / Dart (>=3.0.0) |
| State Management | Provider + ChangeNotifier |
| Routing | go_router (7.1.1) |
| Backend | Firebase Auth, Firebase Core |
| Audio | just_audio (0.9.35) |
| Drawing | painter package + CustomPainter |
| Storage | SharedPreferences |
| Fonts | Google Fonts (Outfit, Roboto) |
| Platforms | Android, iOS, Web |

## Getting Started

### Prerequisites

- Flutter SDK >=3.0.0
- A Firebase project with the following services enabled:
  - Authentication (providers of your choice)

### Setup

```bash

# Install dependencies
flutter pub get

# Run the app
flutter run
```

> **Note:** Firebase configuration files (`google-services.json` for Android, `GoogleService-Info.plist` for iOS) must be placed in their respective platform directories. The web Firebase config is located in `lib/backend/firebase/firebase_config.dart`.

## Project Structure

```
lib/
  auth/              - Firebase authentication managers and providers
  backend/firebase/  - Firebase initialization and configuration
  flutter_flow/      - FlutterFlow framework layer (theme, routing, utilities, widgets)
  custom_code/       - Custom widgets (hiragana drawing painter)
  pages/             - Main screens (homepage, menu, hiragana, learnword, quiz, score)
  word_*/            - Vocabulary category pages (animal, food, family, greeting, place, vehicle)
  write_hiragana_*/  - Writing practice pages for each hiragana row
```

## Screenshots

<!-- Add screenshots here -->

## License

All rights reserved.
