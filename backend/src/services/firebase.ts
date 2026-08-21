import admin from 'firebase-admin';
import { readFileSync } from 'fs';
import config from '../config.js';

let initialized = false;

/**
 * Initialize Firebase Admin SDK
 */
export function initializeFirebase(): void {
  if (initialized) {
    return;
  }

  try {
    if (config.FIREBASE_SERVICE_ACCOUNT_PATH) {
      const serviceAccount = JSON.parse(
        readFileSync(config.FIREBASE_SERVICE_ACCOUNT_PATH, 'utf-8')
      );
      admin.initializeApp({
        credential: admin.credential.cert(serviceAccount),
      });
    } else {
      // Fallback to default credentials (for local development with ADC)
      admin.initializeApp();
    }
    initialized = true;
  } catch {
    throw new Error('Failed to initialize Firebase');
  }
}

/**
 * Verify Firebase ID token and return decoded token
 */
export async function verifyFirebaseToken(token: string): Promise<admin.auth.DecodedIdToken> {
  if (!initialized) {
    initializeFirebase();
  }

  try {
    const decodedToken = await admin.auth().verifyIdToken(token);
    return decodedToken;
  } catch {
    throw new Error('Invalid or expired authentication token');
  }
}

/**
 * Extract user ID from decoded Firebase token
 */
export function getUserIdFromToken(decodedToken: admin.auth.DecodedIdToken): string {
  const uid = decodedToken.uid;
  if (!uid) {
    throw new Error('User ID not found in token');
  }
  return uid;
}

// Initialize on module load
initializeFirebase();
