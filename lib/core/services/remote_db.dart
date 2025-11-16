import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class RemoteDb {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? get _currentUser => AuthService.instance.currentUser;

  DocumentReference<Map<String, dynamic>> _userDocRef() {
    final uid = _currentUser?.uid;
    if (uid == null) {
      throw Exception('User is not logged in.');
    }
    return _firestore.collection('users').doc(uid);
  }

  Future<void> saveFcmToken(String token) async {
    try {
      await _userDocRef().set({'fcm_token': token}, SetOptions(merge: true));
    } catch (e) {
      // Handle exceptions, e.g., log to a crash reporting service
    }
  }

  Future<void> updateUserProfile(UserProfile profile) async {
    try {
      final dobFormatted =
          profile.dateOfBirth != null
              ? DateFormat('yyyy-MM-dd').format(profile.dateOfBirth!)
              : null;

      final userData = {
        'weight_goal': profile.weightGoal?.name,
        'activity_level': profile.activityLevel?.name,
        'height': profile.height,
        'weight': profile.weight,
        'gender': profile.gender?.name,
        'dob': dobFormatted,
        'last_seen': FieldValue.serverTimestamp(),
      };

      userData.removeWhere((key, value) => value == null);

      await _firestore.runTransaction((transaction) async {
        final userDoc = await transaction.get(_userDocRef());

        // Use a mutable map
        final Map<String, dynamic> dataToWrite = Map.from(userData);

        // Check if first_login is not already set
        if (userDoc.data()?['first_login'] == null) {
          dataToWrite['first_login'] = FieldValue.serverTimestamp();
        }

        // Set with merge to create or update the document
        transaction.set(_userDocRef(), dataToWrite, SetOptions(merge: true));
      });
    } catch (e) {
      // Handle exceptions
    }
  }
}
