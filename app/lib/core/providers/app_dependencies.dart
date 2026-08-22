import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/repositories/profile_repository.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_connect_sync_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Composition root for profile, onboarding, and health dependencies.
///
/// Database, analytics, and the network client used by the remote data source
/// remain application/platform lifecycle boundaries. All domain services below
/// receive their collaborators explicitly and can be overridden independently.
final databaseInterfaceProvider = Provider<DatabaseInterface>((ref) {
  return DatabaseService.databaseInterface;
});

final networkClientProvider = Provider<NetworkClient>((ref) {
  return NetworkClient.instance;
});

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepository(
    database: ref.watch(databaseInterfaceProvider),
    networkClient: ref.watch(networkClientProvider),
  );
});

final onboardingServiceProvider = Provider<OnboardingService>((ref) {
  return OnboardingService(
    database: ref.watch(databaseInterfaceProvider),
    profileRepository: ref.watch(profileRepositoryProvider),
    analytics: Analytics.instance,
  );
});

final healthServiceProvider = Provider<HealthService>((ref) {
  return HealthService(
    profileLoader: ref.watch(profileRepositoryProvider).getUserProfile,
  );
});

final healthConnectSyncServiceProvider = Provider<HealthConnectSyncService>((
  ref,
) {
  return HealthConnectSyncService(
    database: ref.watch(databaseInterfaceProvider),
    healthService: ref.watch(healthServiceProvider),
  );
});
