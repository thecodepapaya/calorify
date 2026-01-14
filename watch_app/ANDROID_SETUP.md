# Android Setup for Watch App

## Package Name

The watch app must use the same package name as the main app:
- **Package Name**: `dev.thecodepapaya.calorify`

## AndroidManifest.xml

The watch app needs to be configured as a Wear OS app. Add to `AndroidManifest.xml`:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="dev.thecodepapaya.calorify">
    
    <uses-feature android:name="android.hardware.type.watch" />
    
    <application>
        <!-- Your activities -->
    </application>
</manifest>
```

## Wear OS Messaging

The watch app uses `wear_plus` for data synchronization. However, you may need to implement Wear OS messaging directly using:

- `Wearable.DataApi` for data synchronization
- `MessageApi` for message passing
- `NodeApi` for node discovery

### Alternative Implementation

If `wear_plus` doesn't work as expected, you can implement Wear OS messaging using the official Android APIs:

1. Add Wear OS dependencies to `build.gradle.kts`:
```kotlin
dependencies {
    implementation("com.google.android.gms:play-services-wearable:18.1.0")
}
```

2. Implement message handlers in Kotlin/Java
3. Update `SyncService` to use the native implementation

## Build Configuration

In `android/app/build.gradle.kts`:

```kotlin
android {
    namespace = "dev.thecodepapaya.calorify"
    
    defaultConfig {
        applicationId = "dev.thecodepapaya.calorify"
        minSdk = 26  // Wear OS 2.0+
        targetSdk = flutter.targetSdkVersion
    }
}
```

## Permissions

Add required permissions to `AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

## Firebase Configuration

Copy Firebase configuration from main app or generate new one for watch app. The watch app should use the same Firebase project.

## Testing

1. Connect a Wear OS device or emulator
2. Install the main app on the phone
3. Install the watch app on the watch
4. Ensure both are connected and can communicate
