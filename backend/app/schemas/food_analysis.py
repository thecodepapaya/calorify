from pydantic import BaseModel
from typing import List, Optional
from datetime import datetime

class HealthScore(BaseModel):
    score: str  # 'healthy', 'neutral', 'unhealthy', 'unknown'
    reason: str

class MealInfoSchema(BaseModel):
    name: str
    calories: int
    protein: float
    carbs: float
    fat: float
    fiber: float
    timestamp: datetime
    health_score: Optional[HealthScore] = None

class MealDetectionResult(BaseModel):
    meal_identified: bool
    calorie_confidence: float
    tip: str
    meal_info: MealInfoSchema

class DescriptionAnalysisRequest(BaseModel):
    description: str
