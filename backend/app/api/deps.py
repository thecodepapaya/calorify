from fastapi import Depends, HTTPException, status
from app.services.firebase_auth import verify_firebase_token, get_user_id_from_token
from app.database import get_db
from sqlalchemy.orm import Session
from app.models.user import User

async def get_current_user_token(decoded_token: dict = Depends(verify_firebase_token)) -> dict:
    return decoded_token

async def get_current_user_id(decoded_token: dict = Depends(get_current_user_token)) -> str:
    return get_user_id_from_token(decoded_token)

async def get_current_user_record(
    db: Session = Depends(get_db),
    uid: str = Depends(get_current_user_id)
) -> User:
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        # We don't necessarily raise an error here, 
        # as the user record might need to be created on first sync.
        # But for protected routes that expect a record, we can use this.
        return None
    return user
