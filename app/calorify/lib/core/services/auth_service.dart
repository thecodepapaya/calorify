import 'dart:async';
import 'dart:developer';

import 'package:calorify/core/network/network_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:models/models.dart' as models;

class AuthService {
  @visibleForTesting
  AuthService.test({
    FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
    NetworkClient? networkClient,
  }) : _firebaseAuth = auth ?? FirebaseAuth.instance,
       _googleSignIn = googleSignIn ?? GoogleSignIn.instance,
       _networkClient = networkClient {
    _initializeToken();
  }

  AuthService._({NetworkClient? networkClient})
    : _firebaseAuth = FirebaseAuth.instance,
      _googleSignIn = GoogleSignIn.instance,
      _networkClient = networkClient {
    _initializeToken();
  }

  static AuthService _instance = AuthService._();
  static AuthService get instance => _instance;

  @visibleForTesting
  static void setMockInstance(AuthService mock) {
    _instance = mock;
  }

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final NetworkClient? _networkClient;
  late final Future<void> _googleSignInInitialization =
      _googleSignIn.initialize();

  // Cached auth token for synchronous access
  String? _authToken;

  // Kept for subscription lifecycle
  // ignore: unused_field
  StreamSubscription<User?>? _authStateSubscription;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  /// Get the current auth token (synchronous)
  ///
  /// Can be briefly null during startup until the first async [resolveAuthToken]
  /// completes; API code should prefer [resolveAuthToken] on the request path.
  String? get authToken => _authToken;

  /// Loads or refreshes the Firebase ID token into [authToken].
  ///
  /// Use from HTTP interceptors before sending: [authToken] is populated
  /// asynchronously after sign-in/session restore and can race the first frames.
  Future<String?> resolveAuthToken() async {
    final user = currentUser;
    if (user == null) {
      _authToken = null;
      return null;
    }
    try {
      _authToken = await user.getIdToken();
      return _authToken;
    } on Object {
      _authToken = null;
      log('Failed to refresh auth token');
      return null;
    }
  }

  /// Initialize auth token and listen to auth state changes
  void _initializeToken() {
    // Get initial token if user is already logged in
    _updateToken();

    // Listen to auth state changes to update token
    _authStateSubscription = authStateChanges.listen((user) async {
      await _updateToken();
    });
  }

  /// Update the cached auth token
  Future<void> _updateToken() async {
    await resolveAuthToken();
  }

  /// Ensures that a Firebase user exists (creates an anonymous guest user if none exists)
  /// and updates the auth token.
  Future<User?> ensureSignedIn() async {
    try {
      var user = _firebaseAuth.currentUser;
      if (user == null) {
        final credential = await _firebaseAuth.signInAnonymously();
        user = credential.user;
        log('Guest Firebase user created: ${user?.uid}');
      }
      if (user != null) {
        await resolveAuthToken();
      }
      return user;
    } catch (e, st) {
      log('Failed to ensure Firebase user: $e', error: e, stackTrace: st);
      return null;
    }
  }

  /// Syncs the user profile to backend via PUT /users
  Future<bool> syncUserToBackend({User? firebaseUser}) async {
    try {
      final user = firebaseUser ?? currentUser;
      if (user == null) return false;
      final protoUser = models.User();
      if (user.displayName != null && user.displayName!.isNotEmpty) {
        protoUser.name = user.displayName!;
      }
      if (user.email != null && user.email!.isNotEmpty) {
        protoUser.email = user.email!;
      }
      await (_networkClient ?? NetworkClient.instance)
          .apiCall<models.UpdateUserRequest, models.Empty>(
            '/users',
            models.Empty.new,
            request: models.UpdateUserRequest(user: protoUser),
            method: ProtoHttpMethod.put,
          );
      log('User synced to backend: ${user.uid}');
      return true;
    } catch (e, st) {
      log('Failed to sync user to backend: $e', error: e, stackTrace: st);
      return false;
    }
  }

  Future<UserCredential?> signInWithGoogle() async {
    try {
      await _googleSignInInitialization;
      final googleUser = await _googleSignIn.authenticate();
      final idToken = googleUser.authentication.idToken;
      if (idToken == null || idToken.isEmpty) {
        log('Google sign-in completed without an ID token.');
        return null;
      }

      final credential = GoogleAuthProvider.credential(idToken: idToken);
      final currentUser = _firebaseAuth.currentUser;
      final result =
          currentUser?.isAnonymous == true
              ? await currentUser!.linkWithCredential(credential)
              : await _firebaseAuth.signInWithCredential(credential);
      await resolveAuthToken();
      unawaited(syncUserToBackend(firebaseUser: result.user));
      return result;
    } catch (e, st) {
      log('Google sign-in failed:', error: e, stackTrace: st);
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut(); // Sign out from Google
      await _firebaseAuth.signOut(); // Sign out from Firebase
      _authToken = null; // Clear cached token
    } catch (e) {
      log('Error signing out: $e');
    }
  }

  @visibleForTesting
  Future<void> dispose() async {
    await _authStateSubscription?.cancel();
    _authStateSubscription = null;
  }
}
