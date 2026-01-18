from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from typing import List
from app.api import deps
from app.schemas.meal import Meal, MealCreate, MealUpdate
from app.models.user import User
from app.models.meal import Meal as MealModel
from app.database import get_db
from app.utils.logger import logger

router = APIRouter()

@router.post("/", response_model=Meal)
async def log_meal(
    meal_in: MealCreate,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        user = User(firebase_uid=uid)
        db.add(user)
        db.commit()
        db.refresh(user)
    
    db_meal = MealModel(
        **meal_in.dict(),
        user_id=user.id
    )
    db.add(db_meal)
    db.commit()
    db.refresh(db_meal)
    return db_meal

@router.get("/", response_model=List[Meal])
async def get_meals(
    skip: int = 0,
    limit: int = 100,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        return []
    
    meals = db.query(MealModel).filter(MealModel.user_id == user.id).offset(skip).limit(limit).all()
    return meals

@router.get("/{meal_id}", response_model=Meal)
async def get_meal(
    meal_id: int,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    meal = db.query(MealModel).join(User).filter(
        MealModel.id == meal_id,
        User.firebase_uid == uid
    ).first()
    if not meal:
        raise HTTPException(status_code=404, detail="Meal not found")
    return meal

@router.put("/{meal_id}", response_model=Meal)
async def update_meal(
    meal_id: int,
    meal_update: MealUpdate,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    meal = db.query(MealModel).join(User).filter(
        MealModel.id == meal_id,
        User.firebase_uid == uid
    ).first()
    if not meal:
        raise HTTPException(status_code=404, detail="Meal not found")
    
    update_data = meal_update.dict(exclude_unset=True)
    for field, value in update_data.items():
        setattr(meal, field, value)
    
    db.commit()
    db.refresh(meal)
    return meal

@router.delete("/{meal_id}")
async def delete_meal(
    meal_id: int,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id)
):
    meal = db.query(MealModel).join(User).filter(
        MealModel.id == meal_id,
        User.firebase_uid == uid
    ).first()
    if not meal:
        raise HTTPException(status_code=404, detail="Meal not found")
    
    db.delete(meal)
    db.commit()
    return {"status": "deleted"}
