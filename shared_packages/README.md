# Shared Packages

This directory contains shared packages used by both the main Calorify app and the watch companion app.

## Package Structure

### specs
Shared design specifications (combines colors and styles).
- Color schemes (light and dark)
- Color scheme interface
- Icon colors for macro nutrients
- Global styles (radius, margins, padding)
- App themes (light and dark)

### models
Shared data models.
- MealInfo, MealType, HealthScore
- UserProfile, Gender, WeightGoal, ActivityLevel
- MealDetectionResult
- ScaleConstants

### utils
Shared utility functions.
- Date formatting extensions
- String utilities

### i18n
Shared internationalization.
- Translation JSON files
- Generated translation classes (via slang)

### services
Shared services.
- FoodAnalysisService (AI meal analysis)

## Usage

### In Main App

Add to `pubspec.yaml`:
```yaml
dependencies:
  specs:
    path: ../shared_packages/specs
  models:
    path: ../shared_packages/models
  utils:
    path: ../shared_packages/utils
  i18n:
    path: ../shared_packages/i18n
  services:
    path: ../shared_packages/services
```

### In Watch App

Same as above - both apps use the same shared packages.

## Building

### Generate Code

For i18n (in `i18n`):
```bash
cd shared_packages/i18n
dart run slang
```

For models (in `models`):
```bash
cd shared_packages/models
flutter pub run build_runner build
```

## Migration Notes

The main app should gradually migrate to use these shared packages instead of the local implementations. This ensures consistency between the main app and watch app.
