from fastapi import APIRouter, Depends, HTTPException, Body
from sqlalchemy.orm import Session
from typing import Optional
from app.api import deps
from app.schemas.user import UserProfile, UserProfileUpdate
from app.models.user import User, FcmToken
from app.database import get_db
from app.utils.logger import logger

router = APIRouter()

# ... existing endpoints ...

@router.post("/fcm-token")
async def register_fcm_token(
    token: str = Body(..., embed=True),
    device_type: Optional[str] = Body(None, embed=True),
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        user = User(firebase_uid=uid)
        db.add(user)
        db.commit()
        db.refresh(user)
    
    existing_token = db.query(FcmToken).filter(FcmToken.token == token).first()
    if existing_token:
        existing_token.user_id = user.id
        existing_token.device_type = device_type
    else:
        new_token = FcmToken(user_id=user.id, token=token, device_type=device_type)
        db.add(new_token)
    
    db.commit()
    return {"status": "success"}

@router.get("/profile", response_model=UserProfile)
async def get_my_profile(
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        # Create user if not exists
        user = User(firebase_uid=uid)
        db.add(user)
        db.commit()
        db.refresh(user)
    return user

@router.put("/profile", response_model=UserProfile)
async def update_my_profile(
    profile_update: UserProfileUpdate,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        user = User(firebase_uid=uid)
        db.add(user)
    
    update_data = profile_update.dict(exclude_unset=True)
    for field, value in update_data.items():
        setattr(user, field, value)
    
    db.commit()
    db.refresh(user)
    return user
