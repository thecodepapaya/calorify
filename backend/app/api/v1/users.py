from fastapi import APIRouter, Depends, HTTPException, Body, Request, Response
from sqlalchemy.orm import Session
from typing import List, Optional
from app.api import deps
from app.schemas.user import UserProfile, UserProfileUpdate
from app.models.user import User, FcmToken
from app.database import get_db
from app.utils.logger import logger
from app.protos.calorify import models_pb2
from app.utils.proto_utils import apply_user_profile_update, build_user_profile_proto

router = APIRouter()

# ... existing endpoints ...

@router.post("/fcm-token")
async def register_fcm_token(
    request: Request,
    token: str = Body(None, embed=True),
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
    
    if "application/x-protobuf" in request.headers.get("content-type", ""):
        body = await request.body()
        token_msg = models_pb2.FcmToken()
        token_msg.ParseFromString(body)
        token = token_msg.token
        device_type = token_msg.device_type if token_msg.HasField("device_type") else None
    if token is None:
        raise HTTPException(status_code=400, detail="Missing FCM token")

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
    request: Request,
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
    if "application/x-protobuf" in request.headers.get("accept", ""):
        profile = build_user_profile_proto(user)
        return Response(
            content=profile.SerializeToString(),
            media_type="application/x-protobuf",
        )
    return user

@router.put("/profile", response_model=UserProfile)
async def update_my_profile(
    request: Request,
    profile_update: UserProfileUpdate = None,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        user = User(firebase_uid=uid)
        db.add(user)
    
    if "application/x-protobuf" in request.headers.get("content-type", ""):
        body = await request.body()
        profile_msg = models_pb2.UserProfile()
        profile_msg.ParseFromString(body)
        apply_user_profile_update(user, profile_msg)
    else:
        if profile_update is None:
            raise HTTPException(status_code=400, detail="Missing profile update")
        update_data = profile_update.dict(exclude_unset=True)
        for field, value in update_data.items():
            setattr(user, field, value)
    
    db.commit()
    db.refresh(user)
    if "application/x-protobuf" in request.headers.get("accept", ""):
        profile = build_user_profile_proto(user)
        return Response(
            content=profile.SerializeToString(),
            media_type="application/x-protobuf",
        )
    return user
