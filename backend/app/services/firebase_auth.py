import firebase_admin
from firebase_admin import auth, credentials
from app.config import settings
from fastapi import HTTPException, status, Security
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer
from typing import Optional
from app.utils.logger import logger

# Initialize Firebase Admin SDK
def initialize_firebase():
    if not firebase_admin._apps:
        if settings.FIREBASE_SERVICE_ACCOUNT_PATH:
            try:
                cred = credentials.Certificate(settings.FIREBASE_SERVICE_ACCOUNT_PATH)
                firebase_admin.initialize_app(cred)
                logger.info("Firebase Admin initialized with service account")
            except Exception as e:
                logger.error(f"Failed to initialize Firebase with service account: {e}")
                # Fallback to default credentials or mock if needed
                firebase_admin.initialize_app()
        else:
            logger.warning("FIREBASE_SERVICE_ACCOUNT_PATH not set, using default credentials")
            firebase_admin.initialize_app()

initialize_firebase()

security = HTTPBearer()

async def verify_firebase_token(auth_creds: HTTPAuthorizationCredentials = Security(security)) -> dict:
    token = auth_creds.credentials
    try:
        decoded_token = auth.verify_id_token(token)
        return decoded_token
    except Exception as e:
        logger.error(f"Error verifying Firebase token: {e}")
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid or expired authentication token",
            headers={"WWW-Authenticate": "Bearer"},
        )

def get_user_id_from_token(decoded_token: dict) -> str:
    return decoded_token.get("uid")
