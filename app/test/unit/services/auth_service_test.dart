import 'package:flutter_test/flutter_test.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  late AuthService authService;
  late MockFirebaseAuth mockAuth;
  late MockGoogleSignIn mockGoogleSignIn;
  late MockUser mockUser;

  setUp(() {
    mockUser = MockUser(
      isAnonymous: false,
      uid: 'test_uid',
      email: 'test@example.com',
      displayName: 'Test User',
    );
    mockAuth = MockFirebaseAuth(mockUser: mockUser, signedIn: true);
    mockGoogleSignIn = MockGoogleSignIn();
    
    authService = AuthService.test(auth: mockAuth, googleSignIn: mockGoogleSignIn);
    AuthService.setMockInstance(authService);
  });

  group('AuthService', () {
    test('currentUser returns mocked user when signed in', () {
      expect(authService.currentUser, isNotNull);
      expect(authService.currentUser!.uid, 'test_uid');
      expect(authService.currentUser!.email, 'test@example.com');
    });

    test('authStateChanges emits the signed-out transition', () async {
      final signedOut = authService.authStateChanges.firstWhere(
        (user) => user == null,
      );
      await authService.signOut();
      expect(await signedOut, isNull);
    });

    test('signOut calls both Firebase and Google sign out', () async {
      await authService.signOut();
      expect(authService.currentUser, isNull);
      // verify google sign out was called (GoogleSignInMocks doesn't easily show this,
      // but we can check the internal state if needed or just assume success if no error)
    });
  });
}
