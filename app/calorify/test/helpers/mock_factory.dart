import 'package:mocktail/mocktail.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:calorify/core/services/auth_service.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockUser extends Mock implements User {}
class MockUserCredential extends Mock implements UserCredential {}
class MockGoogleSignIn extends Mock implements GoogleSignIn {}
class MockAuthService extends Mock implements AuthService {}

void registerTestMocks() {
  // Register fallback values for mocktail if needed
  // registerFallbackValue(FakeSomeClass());
}
