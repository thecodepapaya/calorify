from sqlalchemy import Column, Integer, String, Float, DateTime, ForeignKey, Boolean, JSON, UniqueConstraint
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
from app.database import Base

class Meal(Base):
    __tablename__ = "meals"
    __table_args__ = (
        UniqueConstraint("user_id", "client_id", name="uq_meal_user_client_id"),
    )

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    client_id = Column(String, nullable=True, index=True)
    
    name = Column(String, nullable=False)
    meal_quantity = Column(String, nullable=True)
    meal_type = Column(String, nullable=True)
    calories = Column(Integer, default=0)
    protein = Column(Float, default=0.0)
    carbs = Column(Float, default=0.0)
    fat = Column(Float, default=0.0)
    fiber = Column(Float, default=0.0)
    
    timestamp = Column(DateTime(timezone=True), server_default=func.now())
    health_score = Column(JSON, nullable=True)
    is_favorite = Column(Boolean, default=False)
    image_url = Column(String, nullable=True)
    
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    
    user = relationship("User", back_populates="meals")

# Add back_populates to User model in a separate step or here if possible
# Since User is in another file, we usually do it there.
