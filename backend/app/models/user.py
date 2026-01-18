from sqlalchemy import Column, Integer, String, Float, DateTime, ForeignKey, Boolean
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from app.database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    firebase_uid = Column(String, unique=True, index=True, nullable=False)
    email = Column(String, index=True)
    
    # Profile data
    daily_calorie_goal = Column(Integer, nullable=True)
    height = Column(Float, nullable=True)
    weight = Column(Float, nullable=True)
    target_weight = Column(Float, nullable=True)
    gender = Column(String, nullable=True)
    date_of_birth = Column(DateTime, nullable=True)
    weight_goal = Column(String, nullable=True)
    activity_level = Column(String, nullable=True)
    height_unit = Column(String, default="metric")
    weight_unit = Column(String, default="metric")
    
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())

    meals = relationship("Meal", back_populates="user")
    fcm_tokens = relationship("FcmToken", back_populates="user")

class FcmToken(Base):
    __tablename__ = "fcm_tokens"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    token = Column(String, nullable=False, unique=True)
    device_type = Column(String, nullable=True) # ios, android, web
    
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    last_used_at = Column(DateTime(timezone=True), server_default=func.now(), onupdate=func.now())

    user = relationship("User", back_populates="fcm_tokens")
