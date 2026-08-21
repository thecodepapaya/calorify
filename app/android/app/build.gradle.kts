import java.util.Properties
import java.io.FileInputStream
import org.jetbrains.kotlin.gradle.dsl.JvmTarget

plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    id("com.google.devtools.ksp")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("sh.measure.android.gradle") version "0.11.0"
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

val measureApiKey = providers.gradleProperty("MEASURE_API_KEY")
    .orElse(providers.environmentVariable("MEASURE_API_KEY"))
    .orElse("")

// protobuf-javalite already contains the well-known protobuf messages. Firestore
// and Firebase Performance also bring Firebase's repackaged copy, which causes
// duplicate com.google.protobuf classes when the generated watch protocol is
// compiled into the phone app.
configurations.configureEach {
    exclude(group = "com.google.firebase", module = "protolite-well-known-types")
}

android {
    namespace = "dev.thecodepapaya.calorify"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "28.2.13676358"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    defaultConfig {
        applicationId = "dev.thecodepapaya.calorify"
        minSdk = 26
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        manifestPlaceholders["measureApiKey"] = measureApiKey.get()
    }

    flavorDimensions.add("flavor")

    productFlavors {
        create("dev") {
            dimension = "flavor"
            applicationIdSuffix = ".staging"
            versionNameSuffix = "-dev"
        }
        create("staging") {
            dimension = "flavor"
            applicationIdSuffix = ".staging"
            versionNameSuffix = "-staging"
        }
        create("prod") {
            dimension = "flavor"
        }
    }

    signingConfigs {
        if (keystorePropertiesFile.exists()) {
            create("release") {
                keyAlias = keystoreProperties["keyAlias"] as String
                keyPassword = keystoreProperties["keyPassword"] as String
                storeFile = keystoreProperties["storeFile"]?.let { file(it) }
                storePassword = keystoreProperties["storePassword"] as String
            }
        }
    }

    buildTypes {
        release {
            signingConfig = if (keystorePropertiesFile.exists()) {
                signingConfigs.getByName("release")
            } else {
                signingConfigs.getByName("debug")
            }
        }
    }

    sourceSets["main"].java.srcDir(
        rootProject.file("../../shared_packages/models/generated/kotlin")
    )
}

kotlin {
    compilerOptions {
        jvmTarget.set(JvmTarget.JVM_11)
    }
}

dependencies {
    implementation("sh.measure:measure-android:0.14.0")
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
    
    // Wear OS Data Layer API (for communication with watch app)
    implementation("com.google.android.gms:play-services-wearable:18.1.0")
    // Kotlin coroutines
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-play-services:1.7.3")
    implementation("com.google.protobuf:protobuf-kotlin-lite:4.27.3")
    implementation("com.google.mlkit:genai-prompt:1.0.0-beta4")
    implementation("com.google.mlkit:genai-schema:1.0.0-alpha1")
    ksp("com.google.mlkit:genai-schema-compiler:1.0.0-alpha1")
}

flutter {
    source = "../.."
}
