# Calorify Watch App

This is the companion smartwatch app for Calorify. It shares the same package name and design system as the main app.

## Features

1. **View Current Status**
   - Current calorie intake and expenditure
   - Charts and graphs for macros
   - Today's meal log history

2. **Log Meals via Dictation**
   - Voice input for meal descriptions
   - AI-powered nutrition analysis
   - Automatic sync with main app

3. **Data Synchronization**
   - Uses `wear_plus` for data sync between watch and phone
   - Real-time updates from main app
   - Shared data models and services

## Architecture

### Shared Packages

The watch app and main app share code through these packages in `shared_packages/`:

- **specs**: Design specifications (colors, styles, themes)
- **models**: Data models (Meal, UserProfile, etc.)
- **utils**: Utility functions
- **i18n**: Internationalization strings
- **services**: Shared services (FoodAnalysisService)

### Watch App Structure

```
watch_app/
├── lib/
│   ├── main.dart              # App entry point
│   ├── app.dart                # App widget
│   ├── core/
│   │   ├── config/            # Configuration
│   │   ├── router/             # Navigation
│   │   └── services/           # Sync service
│   ├── features/
│   │   ├── home/              # Home screen with summary
│   │   ├── log_meal/          # Meal logging via dictation
│   │   └── history/           # Meal history
│   └── widgets/               # Watch-specific UI widgets
```

## Setup

### 1. Install Dependencies

```bash
cd watch_app
flutter pub get
```

### 2. Generate Code

For i18n:
```bash
cd ../shared_packages/i18n
dart run slang
```

For models (if needed):
```bash
cd ../shared_packages/models
flutter pub run build_runner build
```

### 3. Configure Firebase

The watch app uses Firebase for food analysis. You'll need to:

1. Copy Firebase configuration from main app or generate new one
2. Update `lib/firebase_options.dart` with your Firebase config
3. Or run: `flutterfire configure`

### 4. Configure Wear OS

1. Ensure the watch app has the same package name as the main app
2. Set up Wear OS messaging in AndroidManifest.xml
3. Configure `wear_plus` for data synchronization

## Data Synchronization

The watch app uses `wear_plus` to communicate with the main app:

- **Sending data**: Watch → Phone (meal logs)
- **Receiving data**: Phone → Watch (meals, goals, profile)

### SyncService API

```dart
// Send meal to main app
await SyncService.instance.sendMeal(mealInfo);

// Request today's meals
final meals = await SyncService.instance.requestTodaysMeals();

// Request calorie goal
final goal = await SyncService.instance.requestCalorieGoal();
```

## Main App Integration

The main app needs to implement message handlers for `wear_plus`:

1. Listen for messages from watch
2. Handle meal logging requests
3. Send data updates to watch

Example handler in main app:
```dart
// Listen for watch messages
wearPlus.listen((message) {
  if (message['path'] == '/meal') {
    // Log meal from watch
    final meal = Meal.fromJson(message['data']);
    await DatabaseService.databaseInterface.logMeal(meal);
  }
});
```

## Building

### For Wear OS

```bash
flutter build apk --release
# or
flutter build appbundle --release
```

Ensure the watch app is configured as a Wear OS app in the Android manifest.

## Notes

- The watch app requires the main app to be installed and running
- Speech recognition requires appropriate permissions
- Firebase AI requires internet connection for meal analysis
- The app shares the same package name as the main app for seamless integration
