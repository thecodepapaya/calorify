import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  AuthService._();

  static final _instance = AuthService._();
  static AuthService get instance => _instance;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // Optional: If you need to specify a client ID for web or specific scopes
  // clientId: 'YOUR_WEB_CLIENT_ID.apps.googleusercontent.com', // only if kIsWeb
  // scopes: ['email', 'profile'] // Default scopes are usually fine
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  Future<UserCredential?> signInWithGoogle() async {
    //
    return null;
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut(); // Sign out from Google
      await _firebaseAuth.signOut(); // Sign out from Firebase
    } catch (e) {
      log("Error signing out: $e");
    }
  }
}
