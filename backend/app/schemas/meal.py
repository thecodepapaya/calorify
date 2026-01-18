from pydantic import BaseModel
from typing import Optional, Any
from datetime import datetime

class MealBase(BaseModel):
    name: str
    client_id: Optional[str] = None
    meal_quantity: Optional[str] = None
    meal_type: Optional[str] = None
    image_url: Optional[str] = None
    calories: int = 0
    protein: float = 0.0
    carbs: float = 0.0
    fat: float = 0.0
    fiber: float = 0.0
    timestamp: datetime
    health_score: Optional[Any] = None
    is_favorite: bool = False

class MealCreate(MealBase):
    pass

class MealUpdate(BaseModel):
    name: Optional[str] = None
    client_id: Optional[str] = None
    meal_quantity: Optional[str] = None
    meal_type: Optional[str] = None
    image_url: Optional[str] = None
    calories: Optional[int] = None
    protein: Optional[float] = None
    carbs: Optional[float] = None
    fat: Optional[float] = None
    fiber: Optional[float] = None
    timestamp: Optional[datetime] = None
    health_score: Optional[Any] = None
    is_favorite: Optional[bool] = None

class Meal(MealBase):
    id: int
    user_id: int
    created_at: datetime

    class Config:
        from_attributes = True
