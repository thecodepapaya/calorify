from pydantic import BaseModel, EmailStr
from typing import Optional
from datetime import datetime

class UserBase(BaseModel):
    email: Optional[EmailStr] = None

class UserProfileUpdate(BaseModel):
    daily_calorie_goal: Optional[int] = None
    height: Optional[float] = None
    weight: Optional[float] = None
    target_weight: Optional[float] = None
    gender: Optional[str] = None
    date_of_birth: Optional[datetime] = None
    weight_goal: Optional[str] = None
    activity_level: Optional[str] = None
    height_unit: Optional[str] = "metric"
    weight_unit: Optional[str] = "metric"

class UserProfile(UserProfileUpdate):
    firebase_uid: str
    created_at: datetime
    updated_at: Optional[datetime] = None

    class Config:
        from_attributes = True

class UserCreate(UserBase):
    firebase_uid: str
